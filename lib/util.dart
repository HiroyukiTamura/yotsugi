import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:yotsugi/common/reporting_err_client_impl_web.dart' if (dart.library.io) 'package:yotsugi/common/reporting_err_client_impl.dart';

class Util {
  static Future<void> reportCrash(dynamic exception, { StackTrace stackTrace }) async {
    createReportingErrClient().reportErr(exception, stackTrace);
    debugPrint(exception?.toString());
    debugPrintStack(stackTrace: stackTrace);
  }

  static double roundRatio(double ratio) {
    if (ratio.isNegative)
      return 0;
    if (ratio > 1)
      return 1;

    return ratio;
  }
}