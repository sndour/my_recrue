import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recrue/src/common_widgets/custom_button.dart';
import 'package:my_recrue/src/common_widgets/custum_text_field.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';
import 'package:my_recrue/src/core/utils/text_key.dart';
import 'package:my_recrue/src/router/route_constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
            Image.asset(MyAssets.logo, width: 102.w, height: 47.h),
            SizedBox(height: 27.h),
            Text('Inscription', style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 24.sp, color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),),
            SizedBox(height: 11.h),
            Text('Veuillez entrez vos informations d’inscription', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16.sp,)),
            SizedBox(height: 10.h),
            CustomTextField(hintText: 'Nom', initialValue: 'Koné', obscureText: false,),
            SizedBox(height: 10.h),
            CustomTextField(hintText: 'Prénoms', initialValue: 'Soupkafolo Christian', obscureText: false,),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(TextKey.askIfAlreadyHadAnAccount,),
                SizedBox(width: 5.h),
                Text(TextKey.connect, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold,  decoration: TextDecoration.underline, decorationColor: Theme.of(context).colorScheme.primary, decorationThickness: 1.0
                ),),
              ],
            ),
            SizedBox(height: 20.h),
            CustomButton(action: (){}, text: 'S\'inscrire avec ', color: Theme.of(context).colorScheme.secondaryFixed, textColor: Theme.of(context).colorScheme.primary, image: MyAssets.googleLogin,),
            SizedBox(height: 8.h),
            CustomButton(action: (){}, text: 'S\'inscrire avec ', color: Theme.of(context).colorScheme.secondaryFixed, textColor: Theme.of(context).colorScheme.primary, image: MyAssets.facebookLogin,),
            const Spacer(),
            SizedBox(height: 24.h),
            CustomButton(action: (){
              context.push(AppPage.register_step_two.routePath);
            }, text: 'Suivant', color: Color(0xff6B1A3B), textColor: Colors.white,),
            SizedBox(height: 24.h),
          ],
        ),
      ),

    );
  }
}
