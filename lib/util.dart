import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Util {
  static Future<void> reportCrash(dynamic exception, { StackTrace stackTrace }) async {
    debugPrint(exception?.toString());
    debugPrintStack(stackTrace: stackTrace);

    if (!kIsWeb)
      return FirebaseCrashlytics.instance.recordError(exception, stackTrace);
  }

  static double roundRatio(double ratio) {
    if (ratio.isNegative)
      return 0;
    if (ratio > 1)
      return 1;

    return ratio;
  }
}