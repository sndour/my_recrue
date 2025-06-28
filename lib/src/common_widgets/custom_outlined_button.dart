import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Function() action;
  final String text;
  final Color color;
  final Color textColor;
  final double? fontSize;
  final String? image;
  const CustomOutlinedButton({super.key, required this.action, required this.text, required this.color, this.fontSize, this.image, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 59.h,
      child: OutlinedButton(
        onPressed: action,
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          //backgroundColor: WidgetStateProperty.all(color),
          //borderColor: WidgetStateProperty.all(textColor),
          //textStyle: WidgetStateProperty.all(Theme.of(context).textTheme.bodyMedium!.copyWith(color: textColor)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: textColor, fontWeight: FontWeight.bold)),
            SizedBox(width: 5.h,),
            image != null ? SvgPicture.asset(image!, width: 35.w, height: 35.w,) : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
