import 'package:chatty_charm/core/helper/get_text_align.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  const CardText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: getTextAlign(text) ? TextAlign.right : TextAlign.left,
        style: Styles.regular17.copyWith(
            color: const Color(0xff403E39), fontWeight: FontWeight.w600));
  }
}
