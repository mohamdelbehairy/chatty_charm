import 'package:chatty_charm/core/utils/custom_snack_bar.dart';
import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/features/auth/data/manager/register/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import 'auth_fields_section.dart';
import 'read_and_agree_policy_widget.dart';
import 'register_view_buttons_section.dart';
import 'welcome_auth_section.dart';

class RegisterViewCustomScroll extends StatefulWidget {
  const RegisterViewCustomScroll({super.key});

  @override
  State<RegisterViewCustomScroll> createState() =>
      _RegisterViewCustomScrollState();
}

class _RegisterViewCustomScrollState extends State<RegisterViewCustomScroll> {
  late TextEditingController email, password;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isClick = false;

  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          AppRouter.go(context, AppRouter.addUserDataView);
        }
        if (state is RegisterFailure &&
            state.errorMessage == 'email-already-in-use') {
          customSnackBar(context, S.of(context).email_already_in_use);
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
                  isAllow: false,
                  text: '${S.of(context).create_1}\n${S.of(context).create_2}'),
              AuthTextFieldsSection(
                  email: email,
                  password: password,
                  enabled: state is RegisterLoading ? false : true),
              const Expanded(child: SizedBox(height: 20)),
              ReadAndAgreePolicyWidget(
                isClick: isClick,
                onTap: () {
                  setState(() {
                    isClick = !isClick;
                  });
                },
              ),
              RegisterViewButtonsSection(
                  isLoading: state is RegisterLoading ? true : false,
                  email: email,
                  password: password,
                  formKey: formKey,
                  isClick: isClick),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
