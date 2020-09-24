import 'dart:html';

import 'package:itsumuso/common/url_launcher.dart';

UrlLauncher createUrlLauncher() => UrlLauncherImplWeb();

class UrlLauncherImplWeb extends UrlLauncher {

  @override
  Future<void> launchUrl(String url, {bool newTab = false}) async {
    if (newTab) {
      launchUrlCommon(url);
    } else
      window.location.href = url;

    return Future.value();
  }

}