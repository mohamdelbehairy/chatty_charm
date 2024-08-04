import 'package:chatty_charm/core/models/button_model.dart';
import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_button.dart';
import 'package:chatty_charm/features/user_data/data/models/user_model.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/manager/update_user_data/update_user_data_cubit.dart';

class EditUserDataButtons extends StatelessWidget {
  const EditUserDataButtons(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.gender,
      required this.userData,
      required this.formKey});
  final TextEditingController firstName, lastName, username, gender;
  final UserModel userData;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
            buttonModel: ButtonModel(
                borderRadius: 30,
                verticalPadding: 12,
                buttonName: S.of(context).save,
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (firstName.text != userData.firstName ||
                        lastName.text != userData.lastName ||
                        username.text != userData.username ||
                        gender.text != userData.gender) {
                      await BlocProvider.of<UpdateUserDataCubit>(context)
                          .updateUseData(
                              userModel: UserModel(
                                  firstName: firstName.text,
                                  lastName: lastName.text,
                                  username: username.text,
                                  gender: gender.text,
                                  userID:
                                      FirebaseAuth.instance.currentUser!.uid));
                    }
                  }
                })),
        const SizedBox(height: 8),
        CustomButton(
            buttonModel: ButtonModel(
                buttonColor: Colors.transparent,
                borderRadius: 30,
                verticalPadding: 10,
                border: Border.all(color: AppColors.primaryColor),
                style: Styles.medium22.copyWith(color: AppColors.primaryColor),
                buttonName: S.of(context).discard,
                onPressed: () {
                  firstName.text = userData.firstName;
                  lastName.text = userData.lastName;
                  username.text = userData.username;
                  gender.text = userData.gender;
                })),
      ],
    );
  }
}
