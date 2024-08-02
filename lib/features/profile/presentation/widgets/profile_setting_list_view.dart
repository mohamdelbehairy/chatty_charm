import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/widgets/custom_bottom_sheet.dart';
import 'package:chatty_charm/features/profile/data/models/profile_list_tile_model.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'language_bottom_sheet.dart';
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
          index: 2, title: S.of(context).chat, image: Assets.imagesDocs),
      ProfileListTileModel(
          index: 3, title: S.of(context).log_out, image: Assets.imagesLogOut),
    ];
    return Column(
      children: List.generate(items.length, (index) {
        return InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            if (index == 0) {
            } else if (index == 1) {
              customBottomSheet(
                  context: context, child: const LanguageBottomSheet());
            } else if (index == 2) {
            } else {}
          },
          child: ProfileSettingItem(
              profileListTileModel: ProfileListTileModel(
            index: items[index].index,
            title: items[index].title,
            image: items[index].image,
          )),
        );
      }),
    );
  }
}
