import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/features/profile/data/models/profile_list_tile_model.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'on_tap.dart';
import 'profile_setting_item.dart';

class ProfileSettingListView extends StatelessWidget {
  const ProfileSettingListView({super.key});

  @override
  Widget build(BuildContext context) {
    var items = [
      ProfileListTileModel(
          index: 0,
          title: S.of(context).edit_profile,
          image: Assets.imagesPerson),
      ProfileListTileModel(
          index: 1,
          title: S.of(context).language,
          image: Assets.imagesLanguage),
      ProfileListTileModel(
        index: 2,
        title: S.of(context).chat,
        image: Assets.imagesChat,
        height: 25,
      ),
      ProfileListTileModel(
          index: 3,
          title: S.of(context).privacy_policy,
          image: Assets.imagesDocs),
      ProfileListTileModel(
          index: 4,
          title: S.of(context).contact_us,
          image: Assets.imagesContactUs,
          height: 25),
      ProfileListTileModel(
          index: 5,
          title: S.of(context).delete_account,
          image: Assets.imagesDelete,
          height: 25),
      ProfileListTileModel(
          index: 6, title: S.of(context).log_out, image: Assets.imagesLogOut),
    ];
    return Column(
      children: List.generate(items.length, (index) {
        return InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            onTap(context, index);
          },
          child: ProfileSettingItem(
              profileListTileModel: ProfileListTileModel(
                  index: items[index].index,
                  title: items[index].title,
                  image: items[index].image,
                  height: items[index].height)),
        );
      }),
    );
  }
}
