import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/features/profile/data/models/profile_list_tile_model.dart';
import 'package:flutter/material.dart';

import 'profile_setting_item.dart';

class ProfileSettingListView extends StatelessWidget {
  const ProfileSettingListView({super.key});

  static var items = [
    ProfileListTileModel(title: 'Edit Profile', image: Assets.imagesPerson),
    ProfileListTileModel(title: 'Languages', image: Assets.imagesLanguage),
    ProfileListTileModel(title: 'Chats', image: Assets.imagesDocs),
    ProfileListTileModel(title: 'Log out', image: Assets.imagesLogOut),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) {
        return ProfileSettingItem(
            profileListTileModel: ProfileListTileModel(
                title: items[index].title, image: items[index].image));
      }),
    );
  }
}
