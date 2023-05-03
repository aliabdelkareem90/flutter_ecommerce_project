import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/core/localization/change_locale.dart';
import 'package:flutter_ecommerce_project/routes.dart';
import 'package:flutter_ecommerce_project/core/services/app_services.dart';
import 'package:flutter_ecommerce_project/view/screens/onboarding.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/app_colors.dart';
import 'core/localization/app_translations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppServices.initializeServices();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: AppTranslations(),
      title: 'E-Commerce App',
      locale: controller.locale,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backGroundColor,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(
            color: AppColors.titleColor,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: controller.locale!.languageCode == "ar"
              ? TextStyle(
                  color: AppColors.subTilteColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                )
              : GoogleFonts.poppins(
                  color: AppColors.subTilteColor,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: const OnBoarding(),
    );
  }
}
