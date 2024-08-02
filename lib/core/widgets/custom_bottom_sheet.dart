import 'package:flutter/material.dart';

import '../utils/colors.dart';

Future<dynamic> customBottomSheet(
    {required BuildContext context, required Widget child}) {
  return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.backgroundColor,
      builder: (context) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          width: double.infinity,
          child: child));
}
