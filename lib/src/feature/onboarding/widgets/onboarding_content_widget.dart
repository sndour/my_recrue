import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_recrue/src/common_widgets/custom_button.dart';

class OnboardingContentWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Color colorButton;
  final Function() action;

  const OnboardingContentWidget({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.colorButton,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title, style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Theme.of(context).colorScheme.primary, fontSize: 36, fontWeight: FontWeight.w700)),
          SizedBox(height: 16.h),
          Text(description, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20)),
          SizedBox(height: 95),
          SvgPicture.asset(image, width: 225.w, height: 203.h,),
          const Spacer(),
          //TODO: Add text key (internationalisation's stuff)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: CustomButton(action: action, text: 'Suivant', color: colorButton, textColor: Colors.white,),
          ),
          SizedBox(height: 31),
        ],
      ),
    );
  }


}
