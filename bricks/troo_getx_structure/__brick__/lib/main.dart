import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as service;
import 'package:logger/logger.dart';

import 'app/view/app.dart';
import 'di/service_locator.dart';

final logger = Logger();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

  runZonedGuarded(
    () {
      service.SystemChrome.setPreferredOrientations(
          [service.DeviceOrientation.portraitUp]).then((_) {
        runApp(App());
      });
    },
    (error, stackTrace) => logger.e(error.toString()),
  );
}
