import 'package:chatty_charm/generated/l10n.dart';
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
                hintText: S.of(context).email,
                controller: TextEditingController())),
        const SizedBox(height: 16),
        CustomTextField(
            textFieldModel: TextFieldModel(
                hintText: S.of(context).password,
                controller: TextEditingController()))
      ],
    );
  }
}
