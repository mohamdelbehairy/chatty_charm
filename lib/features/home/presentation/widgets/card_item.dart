import 'package:chatty_charm/features/home/presentation/widgets/card_text.dart';
import 'package:flutter/material.dart';

import 'border_radius_method.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.cardText, required this.cardColor});
  final String cardText;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width:
          cardText.length <= 5 ? MediaQuery.sizeOf(context).width * .2 : null,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
      decoration:
          BoxDecoration(color: cardColor, borderRadius: borderRadiusMethod()),
      child: CardText(text: cardText),
    );
  }
}
