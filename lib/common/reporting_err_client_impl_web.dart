import 'package:yotsugi/common/reporting_err_client.dart';

ReportingErrClient createReportingErrClient() => ReportingErrClientImplWeb();

class ReportingErrClientImplWeb extends ReportingErrClient {
  @override
  Future<void> initialize() async {}
}