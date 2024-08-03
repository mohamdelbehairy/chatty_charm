import 'package:chatty_charm/core/helper/custom_snack_bar.dart';
import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AppBar chatViewAppBar(BuildContext context) {
  return AppBar(
    leading: Center(
        child: CustomSvgPicture(
            svg: SvgPictureModel(
                onTap: () {
                  customSnackBar(context, S.of(context).available_soon);
                },
                image: Assets.imagesMenu,
                height: 35,
                fit: BoxFit.scaleDown))),
    actions: [
      CustomSvgPicture(
          svg: SvgPictureModel(
              image: Assets.imagesUser,
              height: 30,
              onTap: () => GoRouter.of(context).push(AppRouter.profileView))),
      const SizedBox(width: 16),
    ],
  );
}
