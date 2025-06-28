import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_recrue/src/common_widgets/home_teaser_widget.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';
import 'package:my_recrue/src/core/utils/text_key.dart';
import 'package:my_recrue/src/feature/home/widgets/arrow_widget.dart';
import 'package:my_recrue/src/feature/home/widgets/qr_code_widget.dart';

import 'widgets/contact_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 31.w, top: 52.h, right: 31.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(MyAssets.menu),
                SvgPicture.asset(MyAssets.mini_logo),
                Image.asset(MyAssets.user_icon, width: 37, height: 37),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              TextKey.homeGreetings,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 24.sp,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(height: 10),
            Text(
              TextKey.homeSubtitle,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(fontSize: 16.sp),
            ),
            SizedBox(height: 34),
            HomeTeaserWidget(),
            SizedBox(height: 10),
            QrCodeWidget(),
            SizedBox(height: 10),
            ArrowWidget(),
            SizedBox(height: 10),
            ContactWidget(),
          ],
        ),
      ),
    );
  }
}
