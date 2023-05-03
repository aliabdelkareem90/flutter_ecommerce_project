import 'dart:ui';
import 'package:flutter_ecommerce_project/core/services/app_services.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? locale;
  AppServices appServices = Get.find();

  changeLanguage(String langCode) {
    Locale pLocale = Locale(langCode);
    appServices.sharedPrefernces.setString("lang", langCode);
    Get.updateLocale(pLocale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = appServices.sharedPrefernces.getString("lang");
    if (sharedPrefLang == "ar") {
      locale = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      locale = const Locale("en");
    } else {
      locale = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
