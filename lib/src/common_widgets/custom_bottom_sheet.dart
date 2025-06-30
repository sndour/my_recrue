import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_recrue/src/common_widgets/close_cross_widget.dart';
import 'package:my_recrue/src/common_widgets/custom_field_information.dart';

import '../core/utils/text_key.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double desiredHeight = screenHeight * 0.8;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: desiredHeight,
          decoration: BoxDecoration(
            color: Color(0xffF8F8F8),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 31),
            child: Column(
              children: [
                SizedBox(height: 22.w),
                Container(
                  width: 106.w,
                  height: 2.h,
                  decoration: BoxDecoration(
                    color: Color(0xff99A3B7),
                    borderRadius: BorderRadius.circular(1.0),
                  ),
                ),
                SizedBox(height: 17.w),
                Text(
                  TextKey.selectFieldsToAdd,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 24.sp,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 22.w),
                CustomFieldInformation(
                  label: TextKey.addJobTitle,
                  isSetToAddAdditionalInformationField: false,
                ),
                SizedBox(height: 22.w),
                CustomFieldInformation(
                  label: TextKey.addPrefix,
                  isSetToAddAdditionalInformationField: false,
                ),
                SizedBox(height: 22.w),
                CustomFieldInformation(
                  label: TextKey.addSuffix,
                  isSetToAddAdditionalInformationField: false,
                ),
                SizedBox(height: 22.w),
                CustomFieldInformation(
                  label: TextKey.addPseudo,
                  isSetToAddAdditionalInformationField: false,
                ),
                SizedBox(height: 22.w),
                CustomFieldInformation(
                  label: TextKey.addClassifiedAs,
                  isSetToAddAdditionalInformationField: false,
                ),
                SizedBox(height: 22),
                CustomFieldInformation(
                  label: TextKey.addJobTitle,
                  isSetToAddAdditionalInformationField: false,
                ),
                SizedBox(height: 22),
                CustomFieldInformation(
                  label: TextKey.addWebsite,
                  isSetToAddAdditionalInformationField: false,
                ),
              ],
            ),
          ),
        ),
        Positioned(
            right: 21,
            top: -21,

            child: CloseCrossWidget()),
      ],
    );
  }
}
