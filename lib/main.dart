import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/view/onboarding.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoarding(),
    );
  }
}
