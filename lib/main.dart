import 'dart:async';

import 'package:flutter/material.dart';
// ignore:depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart' show usePathUrlStrategy;


import 'package:my_recrue/src/app.dart';

import 'package:my_recrue/src/core/utils/register_error_handler.dart';
import 'package:my_recrue/src/router/app_router.dart';

Future<void> main() async {
  //Bloc.observer = AppBlocObserver();
  // turn off the # in the URLs on the web and remove if only mobil app development
  usePathUrlStrategy();
  registerErrorHandler();
  final goRouter = AppRouter.router;


  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(MainApp(router: goRouter,));
    },
    (error, stackTrace) async {
      debugPrint('$error');
      debugPrint('$stackTrace');
    },
  );
}
