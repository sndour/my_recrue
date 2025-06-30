import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recrue/src/common_widgets/custom_field_information.dart';
import 'package:my_recrue/src/common_widgets/custum_text_field.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';
import 'package:my_recrue/src/core/utils/text_key.dart';

import '../authentication/presentation/components/circle_photo.dart';

class CreateContactScreen extends StatelessWidget {
  const CreateContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
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
            Text(TextKey.createContact, style: Theme
                .of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontSize: 24.sp, color: Theme
                .of(context)
                .colorScheme
                .primary, fontWeight: FontWeight.bold),),
            SizedBox(height: 11.h),
            Text(TextKey.createContactSubtitle, style: Theme
                .of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 16.sp,)),
            SizedBox(height: 25.h),
            Expanded(
              child: SingleChildScrollView(// Appliquez le padding ici pour la partie scrollable
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CirclePhoto(width: 174.w, height: 174.w,),
                      ],
                    ),
                    SizedBox(height: 18.h,),
                    CustomTextField(hintText: 'Nom', initialValue: 'Koné', obscureText: false),
                    SizedBox(height: 15.h,),
                    CustomTextField(hintText: 'Entreprise', initialValue: 'Paynah', obscureText: false),
                    SizedBox(height: 15.h,),
                    CustomTextField(hintText: 'Téléphone', initialValue: '+225 07 58 15151 22', obscureText: false, withIcons: true,),
                    SizedBox(height: 19.h,),
                    Row(
                      children: [
                        Text(TextKey.addPhoneNumber, style: Theme
                            .of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16.sp, color: Theme
                            .of(context)
                            .colorScheme
                            .primary, fontWeight: FontWeight.bold),),
                        SizedBox(width: 9.w,),
                        SvgPicture.asset(MyAssets.addIcon)
                      ],
                    ),
                    SizedBox(height: 19.h,),
                    CustomFieldInformation(label: TextKey.addEmail, isSetToAddAdditionalInformationField: false,),
                    SizedBox(height: 19.h,),
                    CustomFieldInformation(label: TextKey.addBirthday, isSetToAddAdditionalInformationField: false),
                    SizedBox(height: 19.h,),
                    CustomFieldInformation(label: TextKey.addAddress, isSetToAddAdditionalInformationField: false,),
                    SizedBox(height: 19.h,),
                    CustomFieldInformation(label: TextKey.addComplementaryFields, isSetToAddAdditionalInformationField: true),

                    // Espace dynamique en bas pour éviter que le clavier ne cache le contenu
                    SizedBox(height: MediaQuery.of(context).viewInsets.bottom > 0 ?
                    MediaQuery.of(context).viewInsets.bottom + 20.h : 20.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
