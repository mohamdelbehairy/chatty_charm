import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'auth_fields_section.dart';
import 'register_view_buttons_section.dart';
import 'welcome_auth_section.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              WelcomeAuthSection(
                  text: '${S.of(context).create_1}\n${S.of(context).create_2}'),
              const AuthTextFieldsSection(),
              const Expanded(child: SizedBox(height: 24)),
              const RegisterViewButtonsSection(),
              const Spacer(),
            ],
          ),
        ),
      ]),
    );
  }
}
