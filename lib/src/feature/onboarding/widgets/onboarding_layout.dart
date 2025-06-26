import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingLayout extends StatelessWidget {
  final Widget child;
  const OnboardingLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(padding: EdgeInsets.only(left: 31.w, top: 87.h, bottom: 50.h, right: 31.w),child: child,),
      ),
    );
  }
}
