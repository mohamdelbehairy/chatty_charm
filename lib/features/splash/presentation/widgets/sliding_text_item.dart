import 'package:chatty_charm/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingTextItem extends StatelessWidget {
  const SlidingTextItem(
      {super.key, required this.slidingAnimation, required this.text});

  final Animation<Offset> slidingAnimation;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: slidingAnimation,
              child: Text(text, style: Styles.semiBold20));
        });
  }
}
