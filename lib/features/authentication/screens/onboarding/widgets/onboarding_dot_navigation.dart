import 'package:e_commerce/util/constants/colors.dart';
import 'package:e_commerce/util/constants/sizes.dart';
import 'package:e_commerce/util/device/devide_utility.dart';
import 'package:e_commerce/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDorNavigation extends StatelessWidget {
  final PageController controller;

  const OnBoardingDorNavigation({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: isDarkMode ? TColors.light : TColors.dark,
              dotHeight: 6),
        ));
  }
}
