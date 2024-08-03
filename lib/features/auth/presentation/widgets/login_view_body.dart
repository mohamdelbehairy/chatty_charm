import 'package:flutter/material.dart';

import 'login_view_custom_scroll.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: LoginViewCustomScroll(),
        ),
      ]),
    );
  }
}
