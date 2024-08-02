import 'package:chatty_charm/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class AuthButtonsSection extends StatelessWidget {
  const AuthButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(text: 'Create FREE account', onPressed: () {}),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?', style: Styles.regular15),
            const SizedBox(width: 8),
            Text('Log in',
                style: Styles.regular15.copyWith(fontWeight: FontWeight.w600))
          ],
        ),
      ],
    );
  }
}
