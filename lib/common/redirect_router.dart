RedirectRouter createRedirectRouter() => throw UnsupportedError(
  'Stub!',
);

abstract class RedirectRouter {
  RedirectCommand getRedirectCommand();
}

enum RedirectCommand {
  APP_STORE, PLAY_STORE, STAY
}