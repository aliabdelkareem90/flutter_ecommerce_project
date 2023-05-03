import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/controller/onboarding_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../data/source/static/static.dart';

class CustomPageView extends GetView<OnBoardingController> {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      allowImplicitScrolling: true,
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onboardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Image.asset(
            height: 300,
            width: 250,
            fit: BoxFit.cover,
            onboardingList[i].image,
          ),
          const SizedBox(
            height: 60.0,
          ),
          Text(
            onboardingList[i].title.tr,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              onboardingList[i].body.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
