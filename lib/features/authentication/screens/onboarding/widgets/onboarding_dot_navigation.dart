import 'package:e_commerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce/util/constants/colors.dart';
import 'package:e_commerce/util/constants/sizes.dart';
import 'package:e_commerce/util/device/devide_utility.dart';
import 'package:e_commerce/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDorNavigation extends StatelessWidget {

  const OnBoardingDorNavigation({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    bool isDarkMode = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: isDarkMode ? TColors.light : TColors.dark,
              dotHeight: 6),
        ));
  }
}
