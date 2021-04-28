import 'package:flutter/cupertino.dart';
import 'package:itsumuso/common/reporting_err_client.dart';

ReportingErrClient createReportingErrClient() => ReportingErrClientImplWeb();

class ReportingErrClientImplWeb extends ReportingErrClient {
  @override
  Future<void> initialize() async {}

  @override
  Future<void> reportErr(Object? err, StackTrace? stackTrace) async {
    debugPrint(err.toString());
    debugPrintStack(stackTrace: stackTrace);
  }

  @override
  Future<void> reportCaughtStackTrace(dynamic exception, {StackTrace? stackTrace}) async {}
}