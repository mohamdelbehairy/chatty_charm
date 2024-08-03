import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/features/auth/data/manager/login/login_cubit.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/auth_buttons_model.dart';
import 'auth_buttons_section.dart';

class LoginViewButtonsSection extends StatelessWidget {
  const LoginViewButtonsSection(
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
            buttonName: S.of(context).log_in,
            buttonText: S.of(context).register,
            text: S.of(context).not_have_an_account,
            buttonTap: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                await BlocProvider.of<LoginCubit>(context)
                    .login(email: email.text, password: password.text);
              }
            },
            textTap: () => GoRouter.of(context).push(AppRouter.registerView)));
  }
}
