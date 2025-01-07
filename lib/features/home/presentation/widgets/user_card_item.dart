import 'package:chatty_charm/core/utils/get_text_align.dart';
import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:flutter/material.dart';

import 'card_item.dart';

class UserCardItem extends StatelessWidget {
  const UserCardItem({super.key, required this.text, required this.onTap});
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          getTextAlign(text) ? Alignment.centerRight : Alignment.centerLeft,
      child: Stack(
        children: [
          CardItem(cardText: text, cardColor: AppColors.userCardColor),
          Positioned(
              top: 1.0,
              right: getTextAlign(text) ? null : 4.0,
              left: getTextAlign(text) ? 4.0 : null,
              child: CustomSvgPicture(
                  svg:
                      SvgPictureModel(image: Assets.imagesEdit, onTap: onTap))),
        ],
      ),
    );
  }
}
