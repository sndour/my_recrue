import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:my_recrue/src/core/theme/app_theme_data.dart';

class MainApp extends StatefulWidget {
  final GoRouter router;

  const MainApp({super.key, required this.router});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override
  Widget build(BuildContext context) {
    //final themeMode = context.watch<BrightnessBloc>().state.themeMode;


    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) => MaterialApp.router(
        routerConfig: widget.router,
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'app',
        theme: AppThemeData.light(),
        darkTheme: AppThemeData.light(),
        themeMode: ThemeMode.light,
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
