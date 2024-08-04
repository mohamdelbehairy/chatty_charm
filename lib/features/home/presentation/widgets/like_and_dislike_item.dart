import 'package:chatty_charm/core/helper/custom_snack_bar.dart';
import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

class LikeAndDislikeItem extends StatelessWidget {
  const LikeAndDislikeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomSvgPicture(
            svg: SvgPictureModel(
                onTap: () {
                  customSnackBar(context, S.of(context).available_soon);
                },
                image: Assets.imagesLike)),
        const SizedBox(width: 12),
        CustomSvgPicture(
            svg: SvgPictureModel(
                onTap: () {
                  customSnackBar(context, S.of(context).available_soon);
                },
                image: Assets.imagesDislike))
      ],
    );
  }
}
