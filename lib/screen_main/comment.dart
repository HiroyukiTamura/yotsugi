import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yotsugi/util.dart';

class Comment extends StatelessWidget {
  const Comment({Key key, @required this.string}) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Text(
          string,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}

class DateText extends StatelessWidget {
  const DateText({Key key, @required this.string}) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        alignment: Alignment.centerRight,
        child: Text(
          string,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}

class Images extends StatelessWidget {
  const Images({Key key, this.fileList}) : super(key: key);

  final List<dynamic> fileList;

  @override
  Widget build(BuildContext context) =>
      Padding(
          padding: const EdgeInsets.only(top: 64, bottom: 48),
          child: SizedBox(
              height: 268,
              width: 268,
              child: FutureBuilder<dynamic>(
                future: FirebaseStorage()
                    .ref()
                    .child('log')
                    .child(fileList.first as String)
                    .getDownloadURL(),
                builder: (context, AsyncSnapshot<dynamic> snapshot) {

                  if (snapshot.hasError) {
                    Util.reportCrash(snapshot.error);
                    return const SizedBox();
                  }

                  if (!snapshot.hasData)
                    return const SizedBox();

                  return CachedNetworkImage(
                    imageUrl: snapshot.data as String,
                    errorWidget: (context, url, dynamic error) {
                      Util.reportCrash(error);
                      return const SizedBox();
                    },
                  );
                },
              )
          ));
}
