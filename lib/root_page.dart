import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itsumuso/common/redirect_router.dart' show RedirectCommand;
import 'package:itsumuso/screen_about/screen_about.dart';
import 'package:itsumuso/screen_layout/screen_layout.dart';
import 'package:itsumuso/screen_main/screen_main.dart';
import 'package:itsumuso/screen_map/screen_map.dart';
import 'package:itsumuso/screen_post/screen_post.dart';
import 'package:itsumuso/screen_roadmap/screen_roadmap.dart';
import 'package:itsumuso/statics.dart';
import 'package:itsumuso/strings.dart';
import 'package:itsumuso/styles.dart';
import 'package:itsumuso/common/reporting_err_client_impl_web.dart' if (dart.library.io) 'package:itsumuso/common/reporting_err_client_impl.dart';
import 'package:itsumuso/common/redirect_router_impl_web.dart' if (dart.library.io) 'package:itsumuso/common/redirect_router_impl.dart';
import 'package:itsumuso/common/url_launcher_impl_web.dart' if (dart.library.io) 'package:itsumuso/common/url_launcher_impl.dart';

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RootPageState();

  static const ROUTE_MAIN = '/';
  static const ROUTE_GOOGLE_MAP = '/map';
  static const ROUTE_ROAD_MAP = '/roadMap';
  static const ROUTE_LAYOUT = '/layout';
  static const ROUTE_ABOUT = '/about';
  static const ROUTE_POST = '/post';
}

class _RootPageState extends State<RootPage> {

  final _urlLauncher = createUrlLauncher();
  final _redirectCommand = createRedirectRouter().getRedirectCommand();
  Future<void> _initializeFlutterFireFuture;

  @override
  void initState() {
    _initializeFlutterFireFuture = _initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder<void>(
      future: _initializeFlutterFireFuture,
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          return _bgContainer();

        if (_redirectCommand == RedirectCommand.STAY)
          return MaterialApp(
            title: Strings.APP_NAME,
            theme: ThemeData(
              accentColor: Styles.ACCENT_COLOR,
              primaryColor: Styles.PRIMARY_COLOR,
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                foregroundColor: Colors.white,
                backgroundColor: Styles.ACCENT_COLOR,
              ),
              visualDensity: VisualDensity.adaptivePlatformDensity,
              backgroundColor: Styles.BACKGROUND,
            ),
            initialRoute: RootPage.ROUTE_MAIN,
            routes: <String, WidgetBuilder>{
              RootPage.ROUTE_MAIN: (_) => const ScreenMain(),
              RootPage.ROUTE_GOOGLE_MAP: (_) => const ScreenGoogleMapMain(),
              RootPage.ROUTE_ROAD_MAP: (_) => ScreenRoadMap(),
              RootPage.ROUTE_LAYOUT: (_) => ScreenLayout(),
              RootPage.ROUTE_ABOUT: (_) => ScreenAbout(),
              RootPage.ROUTE_POST: (_) => ScreenPost(),
            },
          );

        final storeUrl = _redirectCommand == RedirectCommand.APP_STORE ? Statics.APP_STORE_URL : Statics.PLAY_STORE_URL;
        _urlLauncher.launchUrl(storeUrl);

        return _bgContainer();
      });

  Future<int> _initializeFlutterFire() async {
    await Firebase.initializeApp();
    await createReportingErrClient().initialize();

    return 0;
  }

  Container _bgContainer() => Container(
      height: double.infinity,
      width: double.infinity,
      color: Styles.BACKGROUND,
    );
}
