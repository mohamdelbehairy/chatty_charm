import 'package:chatty_charm/features/auth/data/manager/register/register_cubit.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/auth_buttons_model.dart';
import 'auth_buttons_section.dart';

class RegisterViewButtonsSection extends StatelessWidget {
  const RegisterViewButtonsSection(
      {super.key,
      required this.email,
      required this.password,
      required this.formKey,
      required this.isLoading});
  final TextEditingController email, password;
  final GlobalKey<FormState> formKey;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return AuthButtonsSection(
        authButtonsModel: AuthButtonsModel(
            isLoading: isLoading,
            buttonName: S.of(context).create_free_account,
            buttonText: S.of(context).log_in,
            text: S.of(context).already_have_an_account,
            buttonTap: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                await BlocProvider.of<RegisterCubit>(context)
                    .register(email: email.text, password: password.text);
              }
            },
            textTap: () => GoRouter.of(context).pop(context)));
  }
}
