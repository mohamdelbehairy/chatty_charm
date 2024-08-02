import 'package:flutter/material.dart';

import '../../../../core/models/text_field_model.dart';
import '../../../../core/widgets/custom_text_field.dart';

class AuthTextFieldsSection extends StatelessWidget {
  const AuthTextFieldsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            textFieldModel: TextFieldModel(
                hintText: 'Email address',
                controller: TextEditingController())),
        const SizedBox(height: 16),
        CustomTextField(
            textFieldModel: TextFieldModel(
                hintText: 'Password', controller: TextEditingController()))
      ],
    );
  }
}
