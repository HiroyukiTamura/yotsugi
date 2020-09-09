import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';
import 'package:yotsugi/common/remote_storage_client.dart';

RemoteStorageClient createRemoteStorageClient() => RemoteStorageClientImpl();

class RemoteStorageClientImpl extends RemoteStorageClient {
  @override
  Future<String> getImgUrl(String fileName) async  {
    final dynamic url = await FirebaseStorage()
        .ref()
        .child('log')
        .child(fileName)
        .getDownloadURL();
    return url as String;
  }

  @override
  Future<void> uploadImg(String filePath, String fileName) async => FirebaseStorage.instance
        .ref()
        .child('log')
        .child(fileName)
        .putFile(File(filePath))
        .onComplete;

  @override
  String genFileName(String filePath) => Uuid().v4() + p.extension(filePath);
}