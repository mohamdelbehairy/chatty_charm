import 'package:chatty_charm/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget customLoadingAnimationIndicator({double? size, Color? color}) {
  return LoadingAnimationWidget.staggeredDotsWave(
      color: color ?? AppColors.primaryColor, size: size ?? 40);
}
