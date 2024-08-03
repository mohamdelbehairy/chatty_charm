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
              return S.of(context).first_name_empty;
            }
            if (value.length > 9) {
              return '${S.of(context).first_name} ${S.of(context).must_be_less_10_characters}';
            }
            return null;
          }),
      TextFieldModel(
          hintText: S.of(context).last_name,
          controller: lastName,
          validator: (value) {
            if (value!.isEmpty &&
                firstName.text.isNotEmpty &&
                firstName.text.length <= 9) {
              return S.of(context).last_name_empty;
            }
            if (value.length > 9 &&
                firstName.text.isNotEmpty &&
                firstName.text.length <= 9) {
              return '${S.of(context).last_name} ${S.of(context).must_be_less_10_characters}';
            }
            return null;
          }),
      TextFieldModel(
          hintText: S.of(context).username,
          controller: username,
          validator: (value) {
            if (value!.isEmpty &&
                firstName.text.isNotEmpty &&
                lastName.text.isNotEmpty &&
                firstName.text.length <= 9) {
              return S.of(context).username_empty;
            }
            if (value.length > 9 &&
                firstName.text.isNotEmpty &&
                lastName.text.isNotEmpty &&
                firstName.text.length <= 9) {
              return '${S.of(context).username} ${S.of(context).must_be_less_10_characters}';
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
                username.text.isNotEmpty &&
                firstName.text.length < 9 &&
                lastName.text.length < 9 &&
                username.text.length < 9) {
              return S.of(context).gender_empty;
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
