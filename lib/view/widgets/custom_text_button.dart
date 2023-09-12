import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final void Function()? onPressed;

  const CustomTextButton({
    required this.text,
    required this.fontSize,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.primaryColor,
              fontSize: fontSize,
            ),
      ),
    );
  }
}
