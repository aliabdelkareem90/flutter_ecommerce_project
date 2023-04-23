import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/controller/onboarding_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../core/constants/app_colors.dart';
import '../../data/source/static/static.dart';

class PaginationDots extends StatelessWidget {
  const PaginationDots({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onboardingList.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              margin: const EdgeInsets.only(right: 8),
              height: 10,
              width: controller.currentPage == index ? 25 : 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.currentPage == index
                    ? AppColors.primaryColor
                    : AppColors.subTilteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
