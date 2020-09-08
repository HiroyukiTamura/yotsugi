import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'package:yotsugi/statics.dart';
import 'package:yotsugi/strings.dart';
import 'package:path/path.dart' as p;

class ScreenPost extends StatefulWidget {
  @override
  _ScreenPostState createState() => _ScreenPostState();
}

class _ScreenPostState extends State<ScreenPost> {
  ValueNotifier<String> _imgPathVn;
  TextEditingController _editingController;

  @override
  void initState() {
    super.initState();
    _imgPathVn = ValueNotifier<String>(null);
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
                'img/shadow.png',
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
                    top: 72, bottom: 24, right: 24, left: 24),
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
                    ValueListenableBuilder<String>(
                        valueListenable: _imgPathVn,
                        builder: (context, imgPath, child) => imgPath == null
                            ? InkWell(
                                onTap: () async {
                                  final pickedFile = await ImagePicker()
                                      .getImage(source: ImageSource.gallery);
                                  _imgPathVn.value = pickedFile.path;
                                  //todo iOS対応
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
                                  child: Image.asset(
                                    imgPath,
                                    height: 160,
                                    width: 160,
                                  ),
                                )),
                              )),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: BackButton(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );

  static void _showSnackBar(BuildContext context, String string) {
    SnackBar snackBar = SnackBar(
      content: Text(string),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Future<void> _onTapPostFab(BuildContext context) async {
    final controller = TextEditingController();
    final string = await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(Strings.POST_DIALOG_TITLE),
          content: TextField(
            controller: controller,
            obscureText: true,
            cursorColor: Colors.black54,
            decoration: const InputDecoration(
              hintText: Strings.ENTER_PW,
            ),
          ),
          actions: <Widget>[
            // ボタン領域
            FlatButton(
              onPressed: () async => Navigator.pop(context),
              child: const Text(
                Strings.CANCEL,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
            FlatButton(
              onPressed: () =>
                  Navigator.pop(context, controller.value.text),
              child: const Text(
                Strings.OK,
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ],
        ));
    
    if (string != Statics.PASSWORD) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      _showSnackBar(context, Strings.INVALID_PW);
      return;
    }

    _showSnackBar(context, Strings.SNACK_UPLOADING);
    final localFile = File(_imgPathVn.value);
    final fileName = Uuid().v4() + p.extension(_imgPathVn.value);

    final snapShot = await FirebaseStorage.instance
        .ref()
        .child('log')
        .child(fileName)
        .putFile(localFile)
        .onComplete;

    if (snapShot.error != null) {
      _showSnackBar(context, Strings.SNACK_ERR);
      return;
    }

    await FirebaseFirestore.instance
        .collection('log')
        .add(<String, dynamic>{
      'comments': _editingController.text,
      'imgNames': [fileName],
      'createdAt': Timestamp.fromDate(DateTime.now()),
    });

    _showSnackBar(context, Strings.SNACK_POST_DONE);

    await Future<void>.delayed(const Duration(seconds: 1));

    Navigator.pop(context);
  }
}
