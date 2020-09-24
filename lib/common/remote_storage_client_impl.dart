import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:itsumuso/common/remote_storage_client.dart';

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
}