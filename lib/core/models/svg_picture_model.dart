import 'package:flutter/material.dart';

class SvgPictureModel {
  final String image;
  final double? height, width;
  final BoxFit fit;
  final Color? color;
  final Function()? onTap;

  SvgPictureModel(
      {required this.image,
      this.height,
      this.width,
      this.fit = BoxFit.contain,
      this.color,
      this.onTap});
}
