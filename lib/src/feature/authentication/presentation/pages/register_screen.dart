import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            Image.asset(MyAssets.logo, width: 102, height: 47),
            SizedBox(height: 5),
            Text('Inscription', style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 24.sp, color: Theme.of(context).colorScheme.primary)),
            SizedBox(height: 10),
            Text('Veuillez entrez vos informations d’inscription', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16.sp,)),
            SizedBox(height: 15),
            CustomTextField(hintText: 'Nom', initialValue: 'Koné',),
            SizedBox(height: 8),
            CustomTextField(hintText: 'Prénoms', initialValue: 'Soupkafolo Christian',),
            SizedBox(height: 2),
            Row(
              children: [
                Text(TextKey.askIfAlreadyHadAnAccount,),
                SizedBox(width: 5),
                Text(TextKey.connect, style: context.theme.textTheme.bodyMedium!.copyWith(color: context.theme.colorScheme.primary, fontWeight: FontWeight.bold,  decoration: TextDecoration.underline, decorationColor: context.theme.colorScheme.primary, decorationThickness: 1.0
                ),),
              ],
            ),
            SizedBox(height: 5),
            CustomButton(action: (){}, text: 'S\'inscrire avec ', color: Color(0xffF0D9E3), textColor: Color(0xff6B1A3B), image: MyAssets.googleLogin,),
            SizedBox(height: 5),
            CustomButton(action: (){}, text: 'S\'inscrire avec ', color: Color(0xffF0D9E3), textColor: Color(0xff6B1A3B), image: MyAssets.facebookLogin,),
            const Spacer(),
            CustomButton(action: (){
              context.go(AppPage.accueil.routePath);
            }, text: 'Suivant', color: Color(0xff6B1A3B), textColor: Colors.white,),
            SizedBox(height: 31),
          ],
        ),
      ),

    );
  }
}
