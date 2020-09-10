import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yotsugi/common/reporting_err_client_impl_web.dart'
    if (dart.library.io) 'package:yotsugi/common/reporting_err_client_impl.dart';
import 'package:yotsugi/root_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(
      () => runApp(RootPage()),
      (error, stackTrace) =>
          createReportingErrClient().reportErr(error, stackTrace));
}
