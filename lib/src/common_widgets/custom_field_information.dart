import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFieldInformation extends StatelessWidget {
  final String label;
  final bool isSetToAddAdditionalInformationField;

  const CustomFieldInformation({
    super.key,
    required this.label,
    required this.isSetToAddAdditionalInformationField,
  });

  @override
  Widget build(BuildContext context) {
    if (!isSetToAddAdditionalInformationField)
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: CupertinoColors.systemGrey5,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          label,
          style: TextStyle(color: Colors.black, fontSize: 14.0),
        ),
      );
    else
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: CupertinoColors.systemGrey5,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 14.0,
          ),
        ),
      );
  }
}
