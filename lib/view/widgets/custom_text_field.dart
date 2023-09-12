import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/core/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData suffixIcon;

  const CustomTextField({
    super.key,
    required this.suffixIcon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsetsDirectional.all(20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            label,
            style: const TextStyle(fontSize: 19),
          ),
        ),
        suffixIcon: Icon(suffixIcon),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
