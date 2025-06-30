import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CloseCrossWidget extends StatelessWidget {
  const CloseCrossWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        width: 36.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Icon(Icons.close, color: Colors.white, size: 13.sp,)),
      ),
    );
  }
}
