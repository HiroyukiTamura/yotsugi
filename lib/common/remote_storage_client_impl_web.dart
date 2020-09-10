import 'dart:html';
import 'dart:typed_data';

import 'package:firebase/firebase.dart' as fb;
import 'package:istsumuso/common/remote_storage_client.dart';

RemoteStorageClient createRemoteStorageClient() => RemoteStorageClientImplWeb();

class RemoteStorageClientImplWeb extends RemoteStorageClient {

  @override
  Future<String> getImgUrl(String fileName) async {
    final uri = await fb.storage()
        .ref('/')
        .child('log')
        .child(fileName)
        .getDownloadURL();
    return uri.toString();
  }

  @override
  Future<void> uploadBlob(Uint8List blob, String fileName) async => fb.storage()
        .ref('/')
        .child('log')
        .child(fileName)
        .put(blob);
}