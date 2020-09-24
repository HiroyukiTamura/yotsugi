
import 'dart:html';

import 'package:itsumuso/common/redirect_router.dart';

RedirectRouter createRedirectRouter() => RedirectRouterImplWeb();

class RedirectRouterImplWeb extends RedirectRouter {
  @override
  RedirectCommand getRedirectCommand() {
    final userAgent = window.navigator.userAgent;
    if (userAgent.contains(RegExp('iPhone|iPod', caseSensitive: false)))
      return RedirectCommand.APP_STORE;
    else if (userAgent.contains(RegExp('Android', caseSensitive: false)))
      return RedirectCommand.PLAY_STORE;
    else
      return RedirectCommand.STAY;
  }
}