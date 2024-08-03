import 'package:flutter/material.dart';
import 'register_view_custom_scroll.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: RegisterViewCustomScroll(),
        ),
      ]),
    );
  }
}
