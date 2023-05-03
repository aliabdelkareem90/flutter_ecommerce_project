import 'package:flutter_ecommerce_project/data/source/static/static.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          onboardingList[0].title: onboardingListArabic[0].title,
          onboardingList[0].body: onboardingListArabic[0].body,
          onboardingList[1].title: onboardingListArabic[1].title,
          onboardingList[1].body: onboardingListArabic[1].body,
          onboardingList[2].title: onboardingListArabic[2].title,
          onboardingList[2].body: onboardingListArabic[2].body,
          "Continue": "أستمرار",
          "Skip": "تخطي",
          "SignUp": "التسجيل"
        },
        "en": {
          onboardingList[0].title: onboardingList[0].title,
          onboardingList[0].body: onboardingList[0].body,
          onboardingList[1].title: onboardingList[1].title,
          onboardingList[1].body: onboardingList[1].body,
          onboardingList[2].title: onboardingList[2].title,
          onboardingList[2].body: onboardingList[2].body,
          "Continue": "Continue",
          "Skip": "Skip",
          "SignUp": "Sign Up"
        }
      };
}
