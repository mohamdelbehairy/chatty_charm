import 'package:chatty_charm/core/helper/custom_snack_bar.dart';
import 'package:chatty_charm/features/auth/data/manager/login/login_cubit.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import 'auth_fields_section.dart';
import 'login_view_buttons_section.dart';
import 'welcome_auth_section.dart';

class LoginViewCustomScroll extends StatefulWidget {
  const LoginViewCustomScroll({super.key});

  @override
  State<LoginViewCustomScroll> createState() => _LoginViewCustomScrollState();
}

class _LoginViewCustomScrollState extends State<LoginViewCustomScroll> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          GoRouter.of(context).go(AppRouter.homeView);
          email.clear();
          password.clear();
        }
        if (state is LoginFailure &&
            state.erroMessage == 'invalid-credential') {
          customSnackBar(context, S.of(context).invalid_login);
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              WelcomeAuthSection(
                  text: '${S.of(context).login_1}\n ${S.of(context).create_2}'),
              AuthTextFieldsSection(
                  email: email,
                  password: password,
                  enabled: state is LoginLoading ? false : true),
              const Expanded(child: SizedBox(height: 24)),
              LoginViewButtonsSection(
                  email: email,
                  password: password,
                  formKey: formKey,
                  isLoading: state is LoginLoading ? true : false),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
