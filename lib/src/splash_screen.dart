import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';
import 'package:my_recrue/src/router/route_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome(context);
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    final Widget svg = SvgPicture.asset(
      MyAssets.splash2,
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
