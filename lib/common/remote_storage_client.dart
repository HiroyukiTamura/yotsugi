import 'dart:typed_data';

import 'package:uuid/uuid.dart';
import 'package:path/path.dart' as p;

abstract class RemoteStorageClient {
  Future<void> uploadImg(String filePath, String fileName) => throw UnsupportedError('Stub!');
  Future<void> uploadBlob(Uint8List blob, String fileName) => throw UnsupportedError('Stub!');
  Future<String> getImgUrl(String fileName);
  String genFileName(String filePath) => Uuid().v4() + p.extension(filePath);
}

RemoteStorageClient createRemoteStorageClient() => throw UnsupportedError(
  'Stub!',
);