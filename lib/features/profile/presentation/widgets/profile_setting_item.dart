import 'package:chatty_charm/features/profile/data/models/profile_list_tile_model.dart';
import 'package:flutter/material.dart';

import 'profile_list_tile.dart';

class ProfileSettingItem extends StatelessWidget {
  const ProfileSettingItem({super.key, required this.profileListTileModel});
  final ProfileListTileModel profileListTileModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileListTile(
            profileListTileModel: ProfileListTileModel(
                title: profileListTileModel.title,
                image: profileListTileModel.image)),
        const Divider(color: Color(0xffE9E4D1), thickness: 1.5)
      ],
    );
  }
}
