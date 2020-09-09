abstract class RemoteStorageClient {
  Future<void> uploadImg(String filePath, String fileName);
  Future<String> getImgUrl(String fileName);
  String genFileName(String filePath);
}

RemoteStorageClient createRemoteStorageClient() => throw UnsupportedError(
  'Stub!',
);