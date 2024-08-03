import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomCircleIndicator extends StatelessWidget {
  const CustomCircleIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(color: AppColors.whiteColor));
  }
}
