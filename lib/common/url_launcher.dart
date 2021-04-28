abstract class UrlLauncher {
  Future<void> launchUrl(String url, {bool newTab = false});
}

UrlLauncher createUrlLauncher() => throw UnsupportedError(
  'Stub!',
);