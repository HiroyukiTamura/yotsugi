import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:itsumuso/util.dart';
import 'package:itsumuso/common/remote_storage_client_impl_web.dart' if (dart.library.io) 'package:itsumuso/common/remote_storage_client_impl.dart';

class Comment extends StatelessWidget {
  const Comment({Key key, @required this.string}) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) => Padding(
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
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.only(right: 32, left: 32, top: 48, bottom: 68),
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
  Images({Key key, List<dynamic> fileList})
      : fileName = fileList.first as String,
        super(key: key);

  final String fileName;

  @override
  Widget build(BuildContext context) {
    if (fileName == null)
      return const SizedBox();
    else
      return Padding(
          padding: const EdgeInsets.only(top: 64),
          child: SizedBox(
              height: 256,
              width: 256,
              child: FutureBuilder<dynamic>(
                future: createRemoteStorageClient().getImgUrl(fileName),
                builder: (context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.hasError) {
                    Util.reportCrash(snapshot.error);
                    return const SizedBox();
                  }

                  if (!snapshot.hasData) return const SizedBox();

                  return CachedNetworkImage(
                    imageUrl: snapshot.data as String,
                    errorWidget: (context, url, dynamic error) {
                      Util.reportCrash(error);
                      return const SizedBox();
                    },
                  );
                },
              )));
  }
}
