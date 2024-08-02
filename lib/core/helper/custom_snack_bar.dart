import 'package:chatty_charm/core/utils/colors.dart';
import 'package:flutter/material.dart';

void customSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    backgroundColor: AppColors.primaryColor,
  ));
}
