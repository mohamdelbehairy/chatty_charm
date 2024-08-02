import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class ProfileDeveloperSetion extends StatelessWidget {
  const ProfileDeveloperSetion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(S.of(context).made_with,
            textAlign: TextAlign.center,
            style: Styles.semiBold20.copyWith(fontSize: 18)),
        Text(S.of(context).developer_name,
            style: Styles.semiBold20.copyWith(fontSize: 12)),
        const SizedBox(height: 16),
      ],
    );
  }
}
