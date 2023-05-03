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
    body: 'Track Your order delivery securly and easily ',
  ),
];

List<OnboardingModel> onboardingListArabic = [
  OnboardingModel(
    title: 'جد منتجاتك المفضلة',
    image: ImageAssets.firstOnboardingImg,
    body: 'جد جميع المنتجات التي ترغب بشرائها بسهولة',
  ),
  OnboardingModel(
    title: 'عملية دفع سهلة وامنة',
    image: ImageAssets.secondOnboardingImg,
    body: 'أدفع للمنتج الذي ترغب بشرائه بكل سهولة و امان',
  ),
  OnboardingModel(
    title: 'تعقب مسار طلبك',
    image: ImageAssets.thirdOnboardingImg,
    body: 'يمكنك تعقب مسار طلبك من التجهيز للتسليم',
  ),
];
