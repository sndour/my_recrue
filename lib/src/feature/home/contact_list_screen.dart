import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_recrue/src/common_widgets/custom_bottom_sheet.dart';
import 'package:my_recrue/src/common_widgets/custom_outlined_button.dart';
import 'package:my_recrue/src/common_widgets/custom_violet_field.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';
import 'package:my_recrue/src/core/utils/text_key.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.h),
            Image.asset(MyAssets.logo, width: 102.w, height: 47.h),
            SizedBox(height: 25.h),
            CustomVioletField(),
            SizedBox(height: 10.h),
            CustomOutlinedButton(
              action: () {

                Scaffold.of(context).showBottomSheet(
                      (context) {
                    return CustomBottomSheet();
                  },
                );

                /*_scaffoldKey.currentState?.showBottomSheet((
                  BuildContext context,
                ) {
                  return CustomBottomSheet();
                });*/
              },

              text: 'Créer un contact',
              color: Colors.white,
              textColor: Theme.of(context).colorScheme.primary,
              fontSize: 16.sp,
            ),
            SizedBox(height: 142.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 147.w,
                  child: Text(
                    TextKey.emptyContactList,
                    style: Theme.of(
                      context,
                    ).textTheme.displayMedium!.copyWith(fontSize: 20.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  MyAssets.emptyContactIcon,
                  width: 105.w,
                  height: 105.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
