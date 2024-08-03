import 'package:flutter/material.dart';

import 'edit_user_data_custom_scroll.dart';

class EditUserDataViewBody extends StatelessWidget {
  const EditUserDataViewBody({super.key, required this.enabled});
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: EditUserDataCustomScroll(enabled: enabled),
        ),
      ]),
    );
  }
}
