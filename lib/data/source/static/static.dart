import 'package:flutter_ecommerce_project/data/model/onboarding_model.dart';

import '../../../core/constants/image_assets.dart';

List<OnboardingModel> onboardingList = [
  OnboardingModel(
    title: 'Find Favorite items',
    image: ImageAssets.firstOnboardingImg,
    body: 'Find your favorite products that you want to buy easily',
  ),
  OnboardingModel(
    title: 'Easy & Safe Payment',
    image: ImageAssets.secondOnboardingImg,
    body: 'Pay for the products that you buy safely and easily',
  ),
  OnboardingModel(
    title: 'Track Your Order',
    image: ImageAssets.thirdOnboardingImg,
    body: 'Your product is delivered to your home securly ',
  ),
];
