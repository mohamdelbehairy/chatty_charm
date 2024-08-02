import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:chatty_charm/features/profile/data/models/profile_list_tile_model.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key, required this.profileListTileModel});
  final ProfileListTileModel profileListTileModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CustomSvgPicture(
            svg: SvgPictureModel(image: profileListTileModel.image)),
        title: Text(profileListTileModel.title,
            style: Styles.regular17.copyWith(color: const Color(0xff403E39))),
        trailing: Transform.rotate(
            angle: -180 * 3.14 / 180,
            child: CustomSvgPicture(
                svg: SvgPictureModel(
                    image: Assets.imagesArrowIosLeft,
                    height: 25,
                    color: const Color(0xff403E39)))));
  }
}
