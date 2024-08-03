import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../auth/presentation/widgets/welcome_auth_section.dart';
import 'add_user_data_button.dart';
import 'user_data_list_view.dart';

class AddserDataViewComponent extends StatefulWidget {
  const AddserDataViewComponent({super.key});

  @override
  State<AddserDataViewComponent> createState() =>
      _AddserDataViewComponentState();
}

class _AddserDataViewComponentState extends State<AddserDataViewComponent> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController gender = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    username.dispose();
    gender.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          WelcomeAuthSection(
              text:
                  '${S.of(context).add_user_data_view_1}\n${S.of(context).add_user_data_view_2}'),
          UserDataListView(
              firstName: firstName,
              lastName: lastName,
              username: username,
              gender: gender),
          const SizedBox(height: 8),
          AddUserDataButton(
              firstName: firstName,
              lastName: lastName,
              username: username,
              gender: gender,
              formKey: formKey),
          const Spacer(),
        ],
      ),
    );
  }
}
