import 'package:chatty_charm/core/models/button_model.dart';
import 'package:chatty_charm/features/user_data/data/manager/store_user_data/store_user_data_cubit.dart';
import 'package:chatty_charm/features/user_data/data/models/user_model.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_button.dart';

class AddUserDataButton extends StatelessWidget {
  const AddUserDataButton(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.gender,
      required this.formKey,
      required this.isLoading});
  final TextEditingController firstName, lastName, username, gender;
  final GlobalKey<FormState> formKey;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonModel: ButtonModel(
          buttonName: S.of(context).continue_,
          isLoading: isLoading,
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              await BlocProvider.of<StoreUserDataCubit>(context).storeUserData(
                  userModel: UserModel(
                      firstName: firstName.text,
                      lastName: lastName.text,
                      username: username.text,
                      gender: gender.text,
                      userID: FirebaseAuth.instance.currentUser!.uid));
            }
          }),
    );
  }
}
