import 'package:firebase/firebase.dart' as fb;
import 'package:yotsugi/common/remote_storage_client.dart';

RemoteStorageClient createRemoteStorageClient() => RemoteStorageClientImplWeb();

class RemoteStorageClientImplWeb extends RemoteStorageClient {

  @override
  String genFileName(String filePath) {
    // TODO: implement genFileName
    throw UnimplementedError();
  }

  @override
  Future<String> getImgUrl(String fileName) async {
    final uri = await fb.storage()//CUSTOM FOR WEB
        .ref('/')
        .child('log')
        .child(fileName)
        .getDownloadURL();
    return uri.toString();
  }

  @override
  Future<void> uploadImg(String filePath, String fileName) async {

  }
}