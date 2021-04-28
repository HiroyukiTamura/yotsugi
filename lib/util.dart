import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:itsumuso/common/reporting_err_client_impl_web.dart' if (dart.library.io) 'package:itsumuso/common/reporting_err_client_impl.dart';
import 'package:itsumuso/strings.dart';

class Util {
  static Future<void> reportCrash(dynamic exception, { StackTrace? stackTrace }) async {
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

  static Future<void> launchURL(String url) async {
    if (await canLaunch(url))
      await launch(url);
    else
      await Fluttertoast.showToast(msg: Strings.SNACK_ERR);
  }
}