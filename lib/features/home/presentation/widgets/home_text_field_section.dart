import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../core/models/svg_picture_model.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_svg_picture.dart';
import '../../data/manager/chat/chat_cubit.dart';
import 'home_view_text_field.dart';

class HomeTextFieldSection extends StatelessWidget {
  const HomeTextFieldSection(
      {super.key, required this.controller, required this.messages});

  final TextEditingController controller;
  final ChatCubit messages;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 6,
            child: HomeViewTextField(
                controller: controller,
                onPressed: () async {
                  if (controller.text.isNotEmpty) {
                    await messages.sendMessage(controller: controller);
                  }
                })),
        if (messages.messages.isNotEmpty) const SizedBox(width: 8),
        if (messages.messages.isNotEmpty)
          Expanded(
              child: CustomSvgPicture(
                  svg: SvgPictureModel(
                      onTap: () => AppRouter.push(context, AppRouter.chatView),
                      image: Assets.imagesIconButton,
                      height: 50,
                      fit: BoxFit.scaleDown)))
      ],
    );
  }
}
