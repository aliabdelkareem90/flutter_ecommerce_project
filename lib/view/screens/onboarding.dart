import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/controller/onboarding_controller.dart';
import 'package:get/get.dart';
import '../widgets/build_buttons_row.dart';
import '../widgets/custom_pageview.dart';
import '../widgets/pagination_dots.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: CustomPageView(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  PaginationDots(),
                  SizedBox(height: 60),
                  // CustomButton(),
                  BuildButtonsRow(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
