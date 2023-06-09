import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/routes.dart';
import 'package:flutter_ecommerce_project/view/screens/onboarding.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/app_colors.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backGroundColor,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(
            color: AppColors.titleColor,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: GoogleFonts.poppins(
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
