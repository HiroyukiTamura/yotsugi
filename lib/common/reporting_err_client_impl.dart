import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:itsumuso/common/reporting_err_client.dart';

ReportingErrClient createReportingErrClient() => ReportingErrClientImpl();

class ReportingErrClientImpl extends ReportingErrClient {
  @override
  Future<void> initialize() async {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

    Function? originalOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails errorDetails) async {
      await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
      originalOnError!(errorDetails);
    };
  }

  @override
  Future<void> reportErr(Object? err, StackTrace? stackTrace) =>
      FirebaseCrashlytics.instance.recordError(err, stackTrace);

  @override
  Future<void> reportCaughtStackTrace(dynamic exception, {StackTrace? stackTrace}) =>
      FirebaseCrashlytics.instance.recordError(exception, stackTrace);
}