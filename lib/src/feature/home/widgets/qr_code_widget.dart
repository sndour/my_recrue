import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';
import 'package:my_recrue/src/core/utils/text_key.dart';

class QrCodeWidget extends StatelessWidget {
  const QrCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348.w,
      height: 92.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 208,
            child: Text(
              TextKey.qr_code_title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 16.sp,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          SvgPicture.asset(MyAssets.qr_code, width: 45, height: 45),
        ],
      ),
    );
  }
}
