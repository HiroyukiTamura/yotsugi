import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:itsumuso/strings.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class UrlLauncher {
  Future<void> launchUrl(String url, {bool newTab = false});
}

UrlLauncher createUrlLauncher() => throw UnsupportedError(
  'Stub!',
);