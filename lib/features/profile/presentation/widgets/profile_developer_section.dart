import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class ProfileDeveloperSetion extends StatelessWidget {
  const ProfileDeveloperSetion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('made with ❤️ in 🇪🇬',
            textAlign: TextAlign.center,
            style: Styles.semiBold20.copyWith(fontSize: 18)),
        Text('Mohamed El-Behairy',
            style: Styles.semiBold20.copyWith(fontSize: 12)),
        const SizedBox(height: 16),
      ],
    );
  }
}
