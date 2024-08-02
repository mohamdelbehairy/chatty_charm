import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/auth_buttons_model.dart';
import 'auth_buttons_section.dart';

class LoginViewButtonsSection extends StatelessWidget {
  const LoginViewButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthButtonsSection(
        authButtonsModel: AuthButtonsModel(
            buttonName: S.of(context).log_in,
            buttonText: S.of(context).register,
            text: S.of(context).not_have_an_account,
            buttonTap: () {},
            textTap: () => GoRouter.of(context).push(AppRouter.registerView)));
  }
}
