import 'package:chatty_charm/features/auth/presentation/widgets/auth_buttons_section.dart';
import 'package:flutter/material.dart';

import 'auth_fields_section.dart';
import 'welcome_auth_section.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 2),
              WelcomeAuthSection(
                  text:
                      'Create a free Chatty Charm account\nand ignite your curiosity!'),
              AuthTextFieldsSection(),
              Expanded(child: SizedBox(height: 24)),
              AuthButtonsSection(),
              Spacer(),
            ],
          ),
        ),
      ]),
    );
  }
}
