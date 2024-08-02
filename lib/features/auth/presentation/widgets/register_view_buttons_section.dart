import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/auth_buttons_model.dart';
import 'auth_buttons_section.dart';

class RegisterViewButtonsSection extends StatelessWidget {
  const RegisterViewButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthButtonsSection(
        authButtonsModel: AuthButtonsModel(
            buttonName: S.of(context).create_free_account,
            buttonText: S.of(context).log_in,
            text: S.of(context).already_have_an_account,
            buttonTap: () {},
            textTap: () => GoRouter.of(context).pop(context)));
  }
}
