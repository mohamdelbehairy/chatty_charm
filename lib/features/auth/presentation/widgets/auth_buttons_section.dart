import 'package:chatty_charm/core/models/button_model.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/features/auth/data/models/auth_buttons_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class AuthButtonsSection extends StatelessWidget {
  const AuthButtonsSection({super.key, required this.authButtonsModel});
  final AuthButtonsModel authButtonsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
            buttonModel: ButtonModel(
                isLoading: authButtonsModel.isLoading,
                buttonName: authButtonsModel.buttonName,
                onPressed: authButtonsModel.buttonTap)),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(authButtonsModel.text, style: Styles.regular15),
            const SizedBox(width: 8),
            InkWell(
              onTap: authButtonsModel.textTap,
              child: Text(authButtonsModel.buttonText,
                  style:
                      Styles.regular15.copyWith(fontWeight: FontWeight.w600)),
            )
          ],
        ),
      ],
    );
  }
}
