import 'package:flutter/material.dart';

import 'copy_item.dart';

class ItemBottomSection extends StatelessWidget {
  const ItemBottomSection({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // const LikeAndDislikeItem(),
        const Spacer(),
        CopyItem(text: text),
      ],
    );
  }
}
