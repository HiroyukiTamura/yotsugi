import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:itsumuso/statics.dart';
import 'package:itsumuso/strings.dart';
import 'package:itsumuso/util.dart';
import 'package:itsumuso/common/remote_storage_client_impl_web.dart'
    if (dart.library.io) 'package:itsumuso/common/remote_storage_client_impl.dart';

class ScreenPost extends StatefulWidget {
  @override
  _ScreenPostState createState() => _ScreenPostState();
}

class _ScreenPostState extends State<ScreenPost> {
  late ValueNotifier<_ImgData?> _imgDataVn;
  late TextEditingController _editingController;
  static const double _IMG_SIZE = 160;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController();
    _imgDataVn = ValueNotifier<_ImgData?>(null);
  }

  @override
  void dispose() {
    super.dispose();
    _editingController.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).backgroundColor,
          onPressed: () async => _onTapPostFab(context),
          child: Icon(
            Icons.cloud_upload,
            color: Theme.of(context).accentColor,
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              SizedBox.expand(
                child: Image.asset(
                  'assets/shadow.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black.withOpacity(.3),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: kIsWeb ? 96 : 72,
                    bottom: 24,
                    right: 24,
                    left: 24,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: _editingController,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.multiline,
                        maxLines: 15,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(.5),
                          ),
                          border: InputBorder.none,
                          hintText: 'コメントを入力',
                        ),
                      ),
                      ValueListenableBuilder<_ImgData?>(
                          valueListenable: _imgDataVn,
                          builder: (context, imgData, child) => imgData == null
                              ? InkWell(
                                  onTap: () async {
                                    final pickedFile = await ImagePicker()
                                        .getImage(source: ImageSource.gallery);
                                    if (pickedFile == null)
                                      return;
                                    final bytes = await pickedFile.readAsBytes();
                                    _imgDataVn.value = _ImgData(bytes, pickedFile.path);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 16),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Text(
                                      '画像を追加',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.only(top: 36),
                                  child: Center(
                                      child: Material(
                                    elevation: 4,
                                    child: kIsWeb
                                        ? CachedNetworkImage(
                                            imageUrl: imgData.filePath,
                                            height: _IMG_SIZE,
                                            width: _IMG_SIZE,
                                          )
                                        : Image.memory(
                                            imgData.blob,
                                            height: _IMG_SIZE,
                                            width: _IMG_SIZE,
                                          ),
                                  )),
                                )),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(kIsWeb ? 24 : 8),
                child: BackButton(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );

  Future<void> _onTapPostFab(BuildContext context) async {
    final controller = TextEditingController();
    ValueNotifier<bool> vnTextErr = ValueNotifier(false);
    final pw = await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text(Strings.POST_DIALOG_TITLE),
              content: ValueListenableBuilder<bool>(
                valueListenable: vnTextErr,
                builder: (context, showErr, _) => TextField(
                  controller: controller,
                  obscureText: true,
                  cursorColor: Colors.black54,
                  decoration: InputDecoration(
                    hintText: Strings.ENTER_PW,
                    errorText: showErr ? 'パスワードが間違っています' : null,
                  ),
                ),
              ),
              actions: <Widget>[
                // ボタン領域
                TextButton(
                  onPressed: () async => Navigator.pop(context),
                  child: const Text(
                    Strings.CANCEL,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    if (controller.text == Statics.PASSWORD)
                      Navigator.pop(context, controller.value.text);
                    else
                      vnTextErr.value = true;
                  },
                  child: const Text(
                    Strings.OK,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ));

    if (pw == null) return;

    if (_editingController.text.isNotEmpty != true) {
      await Fluttertoast.showToast(msg: Strings.SNACK_NO_COMMENT);
      return;
    }

    await Fluttertoast.showToast(msg: Strings.SNACK_UPLOADING);

    final client = createRemoteStorageClient();
    String? fileName;
    final imgData = _imgDataVn.value;
    if (imgData != null) {
      fileName = client.genFileName(imgData.filePath);

      try {
        if (kIsWeb)
          await client.uploadBlob(imgData.blob, fileName);
        else
          await client.uploadImg(imgData.filePath, fileName);
      } catch (e) {
        Util.reportCrash(e);
        await Fluttertoast.showToast(msg: Strings.SNACK_ERR);
        return;
      }
    }

    try {
      await FirebaseFirestore.instance.collection('log').add(<String, dynamic>{
        'comments': _editingController.text,
        'imgNames': [fileName],
        'createdAt': Timestamp.fromDate(DateTime.now()),
      });
    } catch (e) {
      Util.reportCrash(e);
      await Fluttertoast.showToast(msg: Strings.SNACK_ERR);
      return;
    }

    await Fluttertoast.showToast(msg: Strings.SNACK_POST_DONE);

    Navigator.pop(context);
  }
}

// todo freezed
class _ImgData {
  _ImgData(this.blob, this.filePath);

  final Uint8List blob;
  final String filePath;
}
