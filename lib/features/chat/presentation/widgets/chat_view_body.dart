import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:chatty_charm/features/chat/data/manager/chat/chat_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'chat_view_list_view.dart';
import 'chat_view_text_field.dart';

class ChatViewBody extends StatefulWidget {
  const ChatViewBody({super.key});

  @override
  State<ChatViewBody> createState() => _ChatViewBodyState();
}

class _ChatViewBodyState extends State<ChatViewBody> {
  TextEditingController controller = TextEditingController();
  final scrollController = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var messages = BlocProvider.of<ChatCubit>(context);
    return BlocConsumer<ChatCubit, ChatState>(
      listener: (context, state) {
        if (state is ChatSuccess) {
          scrollController.animateTo(scrollController.position.maxScrollExtent,
              duration: const Duration(seconds: 1), curve: Curves.easeIn);
        }
        if (state is ChatSuccess) {
          scrollController.animateTo(scrollController.position.maxScrollExtent,
              duration: const Duration(seconds: 1), curve: Curves.easeIn);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 8),
              if (messages.messages.isNotEmpty)
                ChatViewListView(
                    messages: messages,
                    controller: controller,
                    scrollController: scrollController)
              else
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      CustomSvgPicture(
                          svg: SvgPictureModel(image: Assets.imagesLogo)),
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
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ChatViewTextField(
                  controller: controller,
                  onPressed: () async {
                    await messages.sendMessage(controller: controller);
                  }),
              const SizedBox(height: 50),
            ],
          ),
        );
      },
    );
  }
}
