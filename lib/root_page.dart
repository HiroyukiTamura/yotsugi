import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yotsugi/screen_layout/screen_layout.dart';
import 'package:yotsugi/screen_main/screen_main.dart';
import 'package:yotsugi/screen_map/screen_map.dart';
import 'package:yotsugi/screen_roadmap/screen_roadmap.dart';
import 'package:yotsugi/strings.dart';
import 'package:yotsugi/styles.dart';

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RootPageState();

  static const ROUTE_MAIN = '/';
  static const ROUTE_GOOGLE_MAP = '/map';
  static const ROUTE_ROAD_MAP = '/roadMap';
  static const ROUTE_LAYOUT = '/layout';
}

class _RootPageState extends State<RootPage> {
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
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: Styles.BACKGROUND,
          );

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
            RootPage.ROUTE_GOOGLE_MAP: (_) =>
                const ScreenGoogleMapMain(),
            RootPage.ROUTE_ROAD_MAP: (_) => ScreenRoadMap(),
            RootPage.ROUTE_LAYOUT: (_) => ScreenLayout(),
          },
        );
      });

  Future<int> _initializeFlutterFire() async {
    await Firebase.initializeApp();
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

    Function originalOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails errorDetails) async {
      await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
      originalOnError(errorDetails);
    };

    return 0;
  }
}
