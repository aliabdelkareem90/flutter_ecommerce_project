import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/core/constants/app_routes.dart';
import 'package:flutter_ecommerce_project/view/widgets/custom_button.dart';
import 'package:flutter_ecommerce_project/view/widgets/custom_text_field.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';
import '../../widgets/custom_text_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              const SizedBox(height: 25),
              Text(
                "Welcome Back".tr,
                style: TextStyle(fontSize: 29),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                child: Image.asset("assets/images/login.png", height: 300),
              ),
              const SizedBox(height: 10),
              const Text(
                "Sign In With Your Email And Password Or Continue With Social Media",
                style: TextStyle(fontSize: 19),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              const CustomTextField(
                label: "Email",
                suffixIcon: Icons.email,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                label: "Password",
                suffixIcon: Icons.lock,
                // mycontroller: ,
              ),
              const SizedBox(height: 10),
              Text(
                "Forget Password",
                style: TextStyle(fontSize: 18.0, color: AppColors.primaryColor),
                textAlign: TextAlign.end,
              ),
              const SizedBox(height: 35),
              CustomButton(
                text: "Sign In",
                onPressed: () {},
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.height * 0.7,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account ? "),
                  CustomTextButton(
                    onPressed: () => Get.toNamed(AppRoutes.registerRoute),
                    text: "Register",
                    fontSize: 21,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
