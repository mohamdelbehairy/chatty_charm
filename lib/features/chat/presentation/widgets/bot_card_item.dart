import 'package:chatty_charm/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'border_radius_method.dart';
import 'card_text.dart';
import 'item_bottom_section.dart';

class BotCardItem extends StatelessWidget {
  const BotCardItem({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          padding:
              const EdgeInsets.only(top: 12, bottom: 10, left: 10, right: 10),
          decoration: BoxDecoration(
              color: AppColors.whiteColor, borderRadius: borderRadiusMethod()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardText(text: text),
              const SizedBox(height: 12),
              const Divider(thickness: 2, color: AppColors.dividerColor),
              const SizedBox(height: 4),
              ItemBottomSection(text: text),
            ],
          )),
    );
  }
}
