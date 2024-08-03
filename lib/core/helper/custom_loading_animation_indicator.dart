import 'package:chatty_charm/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget customLoadingAnimationIndicator() {
  return LoadingAnimationWidget.staggeredDotsWave(
      color: AppColors.primaryColor, size: 40);
}
