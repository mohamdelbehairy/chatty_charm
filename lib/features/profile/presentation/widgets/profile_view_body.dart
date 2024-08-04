import 'package:flutter/material.dart';

import 'profile_developer_section.dart';
import 'profile_info_setion.dart';
import 'profile_setting_list_view.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          // hasScrollBody: false,
          child: Column(
            children: [
              ProfileInfoSection(),
              ProfileSettingListView(),
              // Spacer(),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: ProfileDeveloperSetion(),
        )
      ],
    );
  }
}
