import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';

import '../core/utils/text_key.dart';

class CustomVioletField extends StatelessWidget {
  const CustomVioletField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF0E8EB),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: SvgPicture.asset(MyAssets.loupe),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        hintText: TextKey.contactFieldHint,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 20.sp,
        ),
      ),
      style: TextStyle(
        color: Theme.of(context).colorScheme.primary,
        fontSize: 16.0,
      ),
    );
  }
}
