import 'package:e_commerce/util/constants/colors.dart';
import 'package:e_commerce/util/constants/sizes.dart';
import 'package:e_commerce/util/device/devide_utility.dart';
import 'package:e_commerce/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingCircularButton extends StatelessWidget {
  const OnBoardingCircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: isDarkMode ? TColors.primary : TColors.black),
            shape: const CircleBorder(),
            backgroundColor: isDarkMode ? TColors.primary : TColors.black,
          ),
          child: Icon(Iconsax.arrow_right_3),
        ));
  }
}
