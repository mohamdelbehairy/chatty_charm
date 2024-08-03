import 'package:chatty_charm/core/manager/get_user_data/get_user_data_cubit.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/presentation/widgets/welcome_auth_section.dart';
import 'edit_user_data_buttons.dart';
import 'user_data_list_view.dart';

class EditUserDataCustomScroll extends StatefulWidget {
  const EditUserDataCustomScroll({super.key, required this.enabled});
  final bool enabled;

  @override
  State<EditUserDataCustomScroll> createState() =>
      _EditUserDataCustomScrollState();
}

class _EditUserDataCustomScrollState extends State<EditUserDataCustomScroll> {
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
    var user = context.read<GetUserDataCubit>();
    return BlocBuilder<GetUserDataCubit, GetUserDataState>(
      builder: (context, state) {
        final userData = user.user.firstWhere((element) =>
            element.userID == FirebaseAuth.instance.currentUser!.uid);
        firstName.text = userData.firstName;
        lastName.text = userData.lastName;
        username.text = userData.username;
        gender.text = userData.gender;
        return Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              const WelcomeAuthSection(text: ''),
              UserDataListView(
                  enabled: true,
                  firstName: firstName,
                  lastName: lastName,
                  username: username,
                  gender: gender),
              const SizedBox(height: 8),
              EditUserDataButtons(
                  firstName: firstName,
                  lastName: lastName,
                  username: username,
                  gender: gender,
                  userData: userData,
                  formKey: formKey),
              const Spacer(),
              // const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
