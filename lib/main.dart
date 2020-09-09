import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yotsugi/root_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() => runApp(RootPage()), (error, stackTrace) {
    if (kIsWeb) {
      debugPrint(error.toString());
      debugPrintStack(stackTrace: stackTrace);
    } else
      return FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}
