import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_recrue/src/core/theme/app_theme_data.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_recrue/src/core/theme/brightness_theme/brightness_bloc.dart';
import 'package:my_recrue/src/router/router_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<BrightnessBloc>().state.themeMode;

    final goRouter = context.read<RouterBloc>().state;


    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) => MaterialApp.router(
        routerConfig: goRouter,
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'app',
        theme: AppThemeData.light(),
        darkTheme: AppThemeData.light(),
        themeMode: themeMode,
        onGenerateTitle: (BuildContext context) => 'My recrue',
        builder: (BuildContext context, Widget? child) => MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.linear(1)),
          child: child ?? SizedBox.shrink(),
        ),
      ),
    );
  }
}
