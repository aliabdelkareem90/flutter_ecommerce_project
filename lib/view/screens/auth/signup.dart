import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/core/constants/app_routes.dart';
import 'package:flutter_ecommerce_project/view/widgets/custom_button.dart';
import 'package:flutter_ecommerce_project/view/widgets/custom_text_field.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                "Register".tr,
                style: const TextStyle(fontSize: 29),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                child: Image.asset("assets/images/register.png", height: 300),
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 20),
              const CustomTextField(
                label: "Confirm Password",
                suffixIcon: Icons.lock,
                // mycontroller: ,
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: "Sign In",
                onPressed: () {},
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.height * 0.7,
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account ? "),
                  CustomTextButton(
                    onPressed: () => Get.toNamed(AppRoutes.loginRoute),
                    text: "Sign in",
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
