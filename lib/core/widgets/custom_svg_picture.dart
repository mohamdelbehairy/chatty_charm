import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({super.key, required this.svg});
  final SvgPictureModel svg;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: svg.onTap,
      child: SvgPicture.asset(
        svg.image,
        height: svg.height,
        width: svg.width,
        fit: svg.fit,
      ),
    );
  }
}
