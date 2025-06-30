import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recrue/src/common_widgets/custom_button.dart';
import 'package:my_recrue/src/core/utils/text_key.dart';
import 'package:my_recrue/src/feature/authentication/presentation/pages/authentication/widgets/countdown_widget.dart';
import 'package:my_recrue/src/router/route_constants.dart';
import 'package:pinput/pinput.dart';

class AuthenticationScreenThree extends StatelessWidget {
  const AuthenticationScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.h),
            GestureDetector(onTap: () {
              context.pop();
            }, child: Icon(Icons.arrow_back_ios, size: 30.sp, color: Theme
                .of(context)
                .colorScheme
                .primary,),),
            SizedBox(height: 27.h),
            Text(TextKey.otp, style: Theme
                .of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontSize: 24.sp, color: Theme
                .of(context)
                .colorScheme
                .primary, fontWeight: FontWeight.bold),),
            SizedBox(height: 11.h),
            Text(TextKey.otpSubtitle, style: Theme
                .of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 16.sp,)),
            SizedBox(height: 10.h),
            Pinput(
              length: 4,
              defaultPinTheme: PinTheme(
                width: 60.w,
                height: 60.w,
                textStyle: Theme
                    .of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 24.sp, color: Theme
                    .of(context)
                    .colorScheme
                    .primary),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  border:  Border.all(color: Color(0xffCED1D5), width: 2.0)
                ),
              ),
              focusedPinTheme: PinTheme(
                width: 56.w,
                height: 56.h,
                textStyle: Theme
                    .of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 24.sp, color: Theme
                    .of(context)
                    .colorScheme
                    .primary),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 15.h,),
            CountdownWidget(duration: Duration(seconds: 20)),
            SizedBox(height: 10.h,),
            Row(
              children: [
                Text(TextKey.otpInstruction,),
                SizedBox(width: 5.h),
                Text(TextKey.otpInstructionAction, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold,  decoration: TextDecoration.underline, decorationColor: Theme.of(context).colorScheme.primary, decorationThickness: 1.0
                ),),
              ],
            ),
            const Spacer(),
            SizedBox(height: 24.h),
            CustomButton(action: () {
              context.push(AppPage.authentication_screen_four.routePath);
            },
              text: 'Suivant',
              color: Color(0xff6B1A3B),
              textColor: Colors.white,),
            SizedBox(height: 24.h),
          ],
        ),
      ),

    );
  }
}
