import 'package:flutter/material.dart';

class TextFieldModel {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool enabled, obscureText;
  final TextInputType? keyboardType;

  TextFieldModel(
      {required this.hintText,
      required this.controller,
      this.validator,
      this.suffixIcon,
      this.enabled = true,
      this.obscureText = false,
      this.keyboardType});
}
