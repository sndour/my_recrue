import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recrue/src/core/utils/my_assets.dart';
import 'package:my_recrue/src/core/utils/text_key.dart';
import 'package:my_recrue/src/router/route_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_content_widget.dart';

class OnboardingWrapContentWidget extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: PageView(
                controller: _controller,
                children: [
                  OnboardingContentWidget(
                    title: TextKey.titleOnboardingOne,
                    description: TextKey.underTitleOnboardingOne,
                    image: MyAssets.onboardingOne,
                    colorButton: Theme.of(context).colorScheme.primary,
                    action: _nextOnboarding
                  ),
                  OnboardingContentWidget(
                    title: TextKey.titleOnboardingTwo,
                    description: TextKey.underTitleOnboardingTwo,
                    image: MyAssets.onboardingTwo,
                    colorButton: Theme.of(context).colorScheme.primary,
                    action: _nextOnboarding
                  ),
                  OnboardingContentWidget(
                    title: TextKey.titleOnboardingThree,
                    description: TextKey.underTitleOnboardingThree,
                    image: MyAssets.onboardingThree,
                    colorButton: Theme.of(context).colorScheme.primary,
                    action: () => context.push(AppPage.register.routePath),
                  ),
                ],
              ),
            ),
          ),

          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: WormEffect(
              dotColor: Color(0xffF0D9E3),
              dotWidth: 25,
              dotHeight: 2,
              offset: 16,
              spacing: 16,
              activeDotColor: Color(0xff6B1A3B),
            ),
          ),
        ],
      ),
    );
  }

  _nextOnboarding() {
     _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}
