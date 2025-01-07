import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/features/auth/data/manager/register/register_cubit.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/auth_buttons_model.dart';
import 'auth_buttons_section.dart';

class RegisterViewButtonsSection extends StatelessWidget {
  const RegisterViewButtonsSection(
      {super.key,
      required this.email,
      required this.password,
      required this.formKey,
      required this.isLoading,
      required this.isClick});
  final TextEditingController email, password;
  final GlobalKey<FormState> formKey;
  final bool isLoading, isClick;

  @override
  Widget build(BuildContext context) {
    return AuthButtonsSection(
        authButtonsModel: AuthButtonsModel(
            isLoading: isLoading,
            enableFeedback: isClick,
            buttonName: S.of(context).create_free_account,
            buttonText: S.of(context).log_in,
            text: S.of(context).already_have_an_account,
            buttonTap: () async {
              if (isClick) {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  await BlocProvider.of<RegisterCubit>(context)
                      .register(email: email.text, password: password.text);
                }
              }
            },
            textTap: () => AppRouter.pop(context)));
  }
}
