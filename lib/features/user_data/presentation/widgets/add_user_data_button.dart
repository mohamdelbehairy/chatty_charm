import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class AddUserDataButton extends StatelessWidget {
  const AddUserDataButton(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.gender,
      required this.formKey});
  final TextEditingController firstName, lastName, username, gender;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        text: S.of(context).continue_,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
          }
        });
  }
}
