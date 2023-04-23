import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/controller/onboarding_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/app_colors.dart';

class CustomButton extends GetView<OnBoardingController> {
  final double width;
  final double height;
  final String data;
  const CustomButton(this.width, this.height, this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width,
      width: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors.primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        onPressed: () {
          controller.nextPage();
        },
        child: Text(
          data,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
