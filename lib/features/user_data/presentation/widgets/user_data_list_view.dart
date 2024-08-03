import 'package:chatty_charm/core/models/text_field_model.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_field.dart';
import 'user_data_deop_down_button.dart';

class UserDataListView extends StatelessWidget {
  const UserDataListView(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.gender});
  final TextEditingController firstName, lastName, username, gender;

  @override
  Widget build(BuildContext context) {
    var items = [
      TextFieldModel(
          hintText: S.of(context).first_name,
          controller: firstName,
          validator: (value) {
            if (value!.isEmpty) {
              return 'first name must not be empty';
            }
            if (value.length > 9) {
              return 'first name must be less than 10 characters';
            }
            return null;
          }),
      TextFieldModel(
          hintText: S.of(context).last_name,
          controller: lastName,
          validator: (value) {
            if (value!.isEmpty && firstName.text.isNotEmpty) {
              return 'last name must not be empty';
            }
            if (value.length > 9) {
              return 'last name must be less than 10 characters';
            }
            return null;
          }),
      TextFieldModel(
          hintText: S.of(context).username,
          controller: username,
          validator: (value) {
            if (value!.isEmpty &&
                firstName.text.isNotEmpty &&
                lastName.text.isNotEmpty) {
              return 'username must not be empty';
            }
            if (value.length > 11) {
              return 'username must be less than 10 characters';
            }
            return null;
          }),
      TextFieldModel(
          hintText: S.of(context).gender,
          controller: gender,
          enabled: false,
          validator: (value) {
            if (value!.isEmpty &&
                firstName.text.isNotEmpty &&
                lastName.text.isNotEmpty &&
                username.text.isNotEmpty) {
              return 'gender must not be empty';
            }
            return null;
          })
    ];
    return Column(
      children: List.generate(
          items.length,
          (index) => Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: CustomTextField(textFieldModel: items[index])),
                  if (index == 3) UserDataDropDownButton(gender: gender)
                ],
              )),
    );
  }
}
