ReportingErrClient createReportingErrClient() => throw UnimplementedError('Stub!');

abstract class ReportingErrClient {
  Future<void> initialize();
  Future<void> reportErr(Object err, StackTrace stackTrace);
  Future<void> reportCaughtStackTrace(dynamic exception, {StackTrace stackTrace});
}
