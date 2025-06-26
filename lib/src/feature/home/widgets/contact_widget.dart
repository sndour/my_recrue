import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';
import 'package:my_recrue/src/core/utils/text_key.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348,
      height: 92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff6B1A3B),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              TextKey.createContact,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 16.sp,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(MyAssets.contactImage,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
