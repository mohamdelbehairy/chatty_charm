import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/models/text_field_model.dart';
import 'package:chatty_charm/features/auth/presentation/widgets/border_method.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textFieldModel});
  final TextFieldModel textFieldModel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: textFieldModel.controller,
        validator: textFieldModel.validator,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16),
            border: borderMethod(),
            focusedBorder: borderMethod(),
            enabledBorder: borderMethod(),
            suffixIcon: textFieldModel.suffixIcon,
            hintText: textFieldModel.hintText,
            hintStyle:
                Styles.regular17.copyWith(color: AppColors.hintTextColor),
            filled: true,
            fillColor: AppColors.whiteColor));
  }
}
