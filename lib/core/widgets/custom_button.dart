import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_circle_indicator.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isLoading = false});
  final String text;
  final Function() onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: AppColors.primaryColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        onPressed: onPressed,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: isLoading
                ? const CustomCircleIndicator()
                : Text(text, style: Styles.medium20)));
  }
}
