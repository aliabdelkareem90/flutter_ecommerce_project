import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

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
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.8,
          text: 'SignUp'.tr,
          onPressed: () => Get.offAllNamed(AppRoutes.loginRoute),
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
                'Skip'.tr,
                style: GoogleFonts.poppins(
                  color: AppColors.primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          CustomButton(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.4,
            text: 'Continue'.tr,
            onPressed: () => controller.nextPage(),
          ),
        ],
      );
    }
  }
}
