import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/onboarding_controller.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_routes.dart';
import 'custom_button.dart';

class BuildButtonsRow extends StatelessWidget {
  const BuildButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (controller) => buildButtonRow(context, controller),
    );
  }

  Widget buildButtonRow(BuildContext context, OnBoardingController controller) {
    if (controller.currentPage > 1) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        child: CustomButton(
          MediaQuery.of(context).size.height * 0.07,
          MediaQuery.of(context).size.width * 0.8,
          'Sign Up',
        ),
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: TextButton(
              onPressed: () {
                Get.offAllNamed(AppRoutes.loginRoute);
              },
              child: Text(
                'Skip',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 22),
              ),
            ),
          ),
          CustomButton(
            MediaQuery.of(context).size.height * 0.07,
            MediaQuery.of(context).size.width * 0.4,
            'Continue',
          ),
        ],
      );
    }
  }
}
