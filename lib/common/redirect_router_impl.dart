import 'package:itsumuso/common/redirect_router.dart';

RedirectRouter createRedirectRouter() => RedirectRouterImpl();

class RedirectRouterImpl extends RedirectRouter {
  @override
  RedirectCommand getRedirectCommand() => RedirectCommand.STAY;
}