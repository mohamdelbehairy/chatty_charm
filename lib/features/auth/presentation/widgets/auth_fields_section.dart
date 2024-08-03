import 'package:chatty_charm/generated/l10n.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../../../core/models/text_field_model.dart';
import '../../../../core/widgets/custom_text_field.dart';

class AuthTextFieldsSection extends StatelessWidget {
  const AuthTextFieldsSection(
      {super.key,
      required this.email,
      required this.password,
      required this.enabled});
  final TextEditingController email, password;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            textFieldModel: TextFieldModel(
                enabled: enabled,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return S.of(context).email_empty;
                  }
                  if (!EmailValidator.validate(value)) {
                    return S.of(context).email_valid;
                  }
                  return null;
                },
                hintText: S.of(context).email,
                controller: email)),
        const SizedBox(height: 16),
        CustomTextField(
            textFieldModel: TextFieldModel(
                enabled: enabled,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty &&
                      email.text.isNotEmpty &&
                      EmailValidator.validate(email.text)) {
                    return S.of(context).password_empty;
                  }
                  if (value.length < 8 &&
                      email.text.isNotEmpty &&
                      EmailValidator.validate(email.text)) {
                    return S.of(context).password_valid;
                  }
                  return null;
                },
                hintText: S.of(context).password,
                controller: password))
      ],
    );
  }
}
