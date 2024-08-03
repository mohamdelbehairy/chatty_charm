import 'package:chatty_charm/core/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonModel {
  final String buttonName;
  final Function() onPressed;
  final bool isLoading;
  final Color buttonColor;
  final double borderRadius;
  final TextStyle? style;

  ButtonModel(
      {required this.buttonName,
      required this.onPressed,
      this.isLoading = false,
      this.buttonColor = AppColors.primaryColor,
      this.borderRadius = 12,
      this.style});
}
