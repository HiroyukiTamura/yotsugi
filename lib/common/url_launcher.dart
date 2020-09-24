import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:itsumuso/strings.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class UrlLauncher {
  Future<void> launchUrl(String url, {bool newTab = false});

  @protected
  Future<void> launchUrlCommon(String url, {bool newTab = false}) async {
    if (await canLaunch(url))
      await launch(url);
    else
      await Fluttertoast.showToast(msg: Strings.SNACK_ERR);
  }
}

UrlLauncher createUrlLauncher() => throw UnsupportedError(
  'Stub!',
);