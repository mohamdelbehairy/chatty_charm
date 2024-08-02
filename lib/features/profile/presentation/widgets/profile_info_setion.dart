import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Image.asset(Assets.imagesProfile),
        const SizedBox(height: 8),
        const Text('Shambhavi Mishra', style: Styles.semiBold28),
        const SizedBox(height: 4),
        const Text('@m.shambhavi', style: Styles.regular20),
        const SizedBox(height: 16),
      ],
    );
  }
}
