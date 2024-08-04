import 'package:chatty_charm/core/manager/is_arabic/is_arabic_cubit.dart';
import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/svg_picture_model.dart';
import 'custom_svg_picture.dart';

AppBar customAppBar(
    {required BuildContext context,
    String? title,
    List<Widget>? actions,
    Function()? onTap}) {
  return AppBar(
      centerTitle: true,
      title: Text(title ?? S.of(context).profile, style: Styles.regular15),
      leading: Center(
          child: Transform.rotate(
        angle: context.read<IsArabicCubit>().isArabic()
            ? 180 * 3.14 / 180
            : 360 * 3.14 / 180,
        child: CustomSvgPicture(
            svg: SvgPictureModel(
                image: Assets.imagesArrowIosLeft,
                height: 30,
                onTap: onTap ?? () => AppRouter.pop(context))),
      )),
      actions: actions);
}
