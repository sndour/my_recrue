import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CirclePhoto extends StatelessWidget {
  final double width;
  final double height;
  const CirclePhoto({required this.width, required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options:  const CircularDottedBorderOptions(
        color: Color(0xffBDBDBD),
        strokeWidth: 1,
      ),
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: Color(0xffF4F4F4),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(Icons.camera_alt_outlined, color: Theme.of(context).colorScheme.primary, size: 38.sp),
          ),
        ),
      );
  }
}
