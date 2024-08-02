import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'sliding_text_item.dart';

class SlidingText extends StatelessWidget {
  const SlidingText(
      {super.key,
      required this.slidingAnimationOne,
      required this.slidingAnimationTwo});
  final Animation<Offset> slidingAnimationOne, slidingAnimationTwo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SlidingTextItem(
            slidingAnimation: slidingAnimationOne,
            text: '${S.of(context).Chatty} '),
        SlidingTextItem(
            slidingAnimation: slidingAnimationTwo, text: S.of(context).Charm),
      ],
    );
  }
}
