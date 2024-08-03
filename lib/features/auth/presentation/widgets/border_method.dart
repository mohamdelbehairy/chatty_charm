import 'package:chatty_charm/core/utils/colors.dart';
import 'package:flutter/material.dart';

OutlineInputBorder borderMethod() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.dividerColor, width: 1.0));
}
