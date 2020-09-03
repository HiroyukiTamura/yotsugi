import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class Util {
  static Future<void> reportCrash(dynamic exception, { StackTrace stackTrace }) async => FirebaseCrashlytics.instance.recordError(exception, stackTrace);
}