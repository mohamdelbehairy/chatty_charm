import 'package:chatty_charm/core/models/button_model.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/custom_loading_animation_indicator.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonModel});
  final ButtonModel buttonModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonModel.onPressed,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: buttonModel.buttonColor,
              border: buttonModel.border,
              borderRadius: BorderRadius.circular(buttonModel.borderRadius)),
          child: Center(
            child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: buttonModel.verticalPadding),
                child: buttonModel.isLoading
                    ? customLoadingAnimationIndicator(
                        color: AppColors.whiteColor, size: 25)
                    : Text(buttonModel.buttonName,
                        style: buttonModel.style ?? Styles.medium22)),
          )),
    );
  }
}
