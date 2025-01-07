import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:chatty_charm/features/profile/data/models/profile_list_tile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/manager/is_arabic/is_arabic_cubit.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key, required this.profileListTileModel});
  final ProfileListTileModel profileListTileModel;

  @override
  Widget build(BuildContext context) {
    var isArabic = context.read<IsArabicCubit>().isArabic();
    return ListTile(
        leading: Transform.rotate(
            angle: (isArabic && profileListTileModel.index == 6) ||
                    (!isArabic && profileListTileModel.index == 5)
                ? 180 * 3.14 / 180
                : 0,
            child: CustomSvgPicture(
                svg: SvgPictureModel(
                    image: profileListTileModel.image,
                    fit: BoxFit.scaleDown,
                    height: profileListTileModel.height,
                    color: AppColors.primaryColor))),
        title: Text(profileListTileModel.title,
            style: Styles.regular17.copyWith(color: const Color(0xff403E39))),
        trailing: Transform.rotate(
            angle: isArabic ? 360 * 3.14 / 180 : -180 * 3.14 / 180,
            child: CustomSvgPicture(
                svg: SvgPictureModel(
                    image: Assets.imagesArrowIosLeft,
                    height: 25,
                    color: const Color(0xff403E39)))));
  }
}
