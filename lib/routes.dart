import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/core/constants/app_routes.dart';
import 'package:flutter_ecommerce_project/view/screens/auth/login.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  AppRoutes.loginRoute: (context) => const Login()
};
