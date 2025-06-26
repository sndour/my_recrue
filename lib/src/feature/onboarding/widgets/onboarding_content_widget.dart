import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
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
          Text(title, style: context.textTheme.displayLarge!.copyWith(color: context.theme.colorScheme.primary)),
          SizedBox(height: 16),
          Text(description, style: context.textTheme.bodyMedium),
          SizedBox(height: 95),
          SvgPicture.asset(image, width: 265, height: 243,),
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
