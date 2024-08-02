import 'package:chatty_charm/core/models/text_field_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatViewTextField extends StatelessWidget {
  const ChatViewTextField(
      {super.key, required this.controller, required this.onPressed});
  final TextEditingController controller;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      textFieldModel: TextFieldModel(
        controller: controller,
        hintText: 'Ask me anything...',
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
              onPressed: onPressed,
              icon: SvgPicture.asset(Assets.imagesSendMessage)),
        ),
      ),
    );
  }
}
