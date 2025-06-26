import 'package:flutter/material.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';
import 'package:my_recrue/src/core/utils/text_key.dart';

class HomeTeaserWidget extends StatelessWidget {
  const HomeTeaserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 348,
      height: 239,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyAssets.teaser),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:25.0, bottom: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 228,
              child: Text(
                TextKey.teaserTitle,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
