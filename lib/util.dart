import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';

class Util {
  static Future<void> reportCrash(dynamic exception, { StackTrace stackTrace }) async {
    debugPrint(exception?.toString());
    debugPrintStack(stackTrace: stackTrace);
    return FirebaseCrashlytics.instance.recordError(exception, stackTrace);
  }
}