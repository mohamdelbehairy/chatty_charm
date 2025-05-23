import 'package:chatty_charm/core/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonModel {
  final String buttonName;
  final Function() onPressed;
  final bool isLoading, enableFeedback;
  final Color buttonColor;
  final double borderRadius, verticalPadding;
  final TextStyle? style;
  final BoxBorder? border;
  final double? width;

  ButtonModel(
      {required this.buttonName,
      required this.onPressed,
      this.isLoading = false,
      this.buttonColor = AppColors.primaryColor,
      this.borderRadius = 12,
      this.style,
      this.border,
      this.verticalPadding = 16,
      this.width,
      this.enableFeedback = true});
}
