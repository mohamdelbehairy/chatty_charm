import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:flutter/material.dart';

class ChatViewNotMessages extends StatelessWidget {
  const ChatViewNotMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          CustomSvgPicture(svg: SvgPictureModel(image: Assets.imagesLogo)),
          const SizedBox(height: 12),
          const Text('Chatty Charm', style: Styles.regular34),
          const SizedBox(height: 16),
          const Text(
              "I'm here to help you with whatever you need, from answering questions to providing recommendations. Let's chat!",
              textAlign: TextAlign.center,
              style: Styles.regular17),
          const SizedBox(height: 24),
          Text(
            'Example: Some text example\n goes in here',
            textAlign: TextAlign.center,
            style: Styles.regular17.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
