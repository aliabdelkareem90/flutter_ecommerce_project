import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/core/constants/app_routes.dart';
import 'package:get/get.dart';

import '../data/source/static/static.dart';

class OnBoardingController extends GetxController {
  int currentPage = 0;
  late PageController pageController;

  @override
  onInit() {
    pageController = PageController();
    super.onInit();
  }

  nextPage() {
    currentPage++;
    if (currentPage > onboardingList.length - 1) {
      Get.offAllNamed(AppRoutes.loginRoute);
    } else {
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  onPageChanged(int index) {
    currentPage = index;
    update();
  }
}
