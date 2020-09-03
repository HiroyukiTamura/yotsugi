import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yotsugi/screen_main/screen_main.dart';
import 'package:yotsugi/screen_map/screen_map.dart';
import 'package:yotsugi/strings.dart';

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  Future<void> _initializeFlutterFireFuture;

  @override
  void initState() {
    _initializeFlutterFireFuture = _initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder<Object>(
    future: _initializeFlutterFireFuture,
    builder: (context, snapshot) {
      return MaterialApp(
          title: Strings.APP_NAME,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: '/',
          routes: <String, WidgetBuilder>{
            '/': (BuildContext context) => const ScreenMain(),
            '/map': (BuildContext context) => const ScreenGoogleMapMain(),
          },
        );
    }
  );

  Future<void> _initializeFlutterFire() async {
    await Firebase.initializeApp();
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

    Function originalOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails errorDetails) async {
      await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
      originalOnError(errorDetails);
    };
  }
}