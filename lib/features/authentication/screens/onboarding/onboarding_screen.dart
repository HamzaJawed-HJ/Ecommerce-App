import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:t_store/features/authentication/controllers/controller_onboarding/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation_wiget.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingController = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: onboardingController.pageController,
          onPageChanged: onboardingController.updatePageIndicator,
          children: const [
            OnboardingPage(
              image: TImages.onBoardingImage1,
              tittle: TTexts.onBoardingTitle1,
              subtitle: TTexts.onBoardingSubTitle1,
            ),
            OnboardingPage(
              image: TImages.onBoardingImage2,
              tittle: TTexts.onBoardingTitle2,
              subtitle: TTexts.onBoardingSubTitle2,
            ),
            OnboardingPage(
              image: TImages.onBoardingImage3,
              tittle: TTexts.onBoardingTitle3,
              subtitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        ),
        //skip button
        OnboardingSkipButton(),

        //Dot navigation
        OnboardingDotNaviaton(),

        //circular button
        OnboardingNextButton(),
      ]),
    );
  }
}
