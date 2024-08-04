import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

class WelcomeAuthSection extends StatelessWidget {
  const WelcomeAuthSection(
      {super.key, required this.text, this.isAllow = true});
  final String text;
  final bool isAllow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isAllow)
          CustomSvgPicture(
              svg: SvgPictureModel(image: Assets.imagesLogo, height: 70)),
        if (isAllow) const SizedBox(height: 32),
        CustomSvgPicture(svg: SvgPictureModel(image: Assets.imagesWelcome)),
        const SizedBox(height: 32),
        Text(
            '${S.of(context).welcome} ${S.of(context).Chatty} ${S.of(context).Charm}',
            style: Styles.semiBold20),
        const SizedBox(height: 4),
        Text(text, textAlign: TextAlign.center, style: Styles.regular17),
        if (text.isNotEmpty) const SizedBox(height: 34),
      ],
    );
  }
}
