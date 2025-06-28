import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';
import 'package:my_recrue/src/router/route_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    _navigateToHome(context);
    final Widget svg = SvgPicture.asset(
      MyAssets.splashScreen,
      semanticsLabel: 'Splash Screen',
      width: width,
      height: height ,
    );
    return Scaffold(body: svg);
  }

  _navigateToHome(BuildContext context) async {
    var duration = Duration(milliseconds: 5000);
    await Future.delayed(duration, () {
      if (context.mounted) context.push(AppPage.onboarding.routePath);
    });
  }
}
