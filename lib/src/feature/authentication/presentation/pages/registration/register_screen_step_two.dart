import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recrue/src/common_widgets/custom_button.dart';
import 'package:my_recrue/src/common_widgets/custum_text_field.dart';
import 'package:my_recrue/src/router/route_constants.dart';

class RegisterScreenStepTwo extends StatelessWidget {
  const RegisterScreenStepTwo({super.key});

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
            }, child: Icon(Icons.arrow_back_ios, size: 30.sp, color: Theme.of(context).colorScheme.primary,)),
            SizedBox(height: 27.h),
            Text('Inscription', style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 24.sp, color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),),
            SizedBox(height: 11.h),
            Text('Veuillez entrez vos informations d’inscription', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16.sp,)),
            SizedBox(height: 10.h),
            CustomTextField(hintText: 'Email', initialValue: 'christian.kone@gmail.com',obscureText: false,),
            const Spacer(),
            SizedBox(height: 24.h),
            CustomButton(action: (){
              context.push(AppPage.accueil.routePath);
            }, text: 'Suivant', color: Color(0xff6B1A3B), textColor: Colors.white,),
            SizedBox(height: 24.h),
          ],
        ),
      ),

    );
  }
}
