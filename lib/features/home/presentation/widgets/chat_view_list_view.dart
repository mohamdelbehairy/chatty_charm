import 'package:chatty_charm/core/helper/custom_loading_animation_indicator.dart';
import 'package:chatty_charm/core/manager/is_arabic/is_arabic_cubit.dart';
import 'package:chatty_charm/features/home/data/manager/chat/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/get_text_align.dart';
import 'bot_card_item.dart';
import 'user_card_item.dart';

class ChatViewListView extends StatefulWidget {
  const ChatViewListView(
      {super.key,
      required this.messages,
      required this.controller,
      required this.scrollController});

  final ChatCubit messages;
  final TextEditingController controller;
  final ScrollController scrollController;

  @override
  State<ChatViewListView> createState() => _ChatViewListViewState();
}

class _ChatViewListViewState extends State<ChatViewListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            controller: widget.scrollController,
            physics: const BouncingScrollPhysics(),
            itemCount: widget.messages.messages.length,
            itemBuilder: (context, index) {
              final message = widget.messages.messages[index];
              return message.isUser
                  ? Column(
                      crossAxisAlignment:
                          context.read<IsArabicCubit>().isArabic() &&
                                  getTextAlign(message.message)
                              ? CrossAxisAlignment.start
                              : !context.read<IsArabicCubit>().isArabic() &&
                                      !getTextAlign(message.message)
                                  ? CrossAxisAlignment.start
                                  : !context.read<IsArabicCubit>().isArabic() &&
                                          getTextAlign(message.message)
                                      ? CrossAxisAlignment.end
                                      : CrossAxisAlignment.end,
                      children: [
                        UserCardItem(
                            text: message.message,
                            onTap: () {
                              setState(() {
                                widget.controller.text = message.message;
                              });
                            }),
                        if (index ==
                            context.read<ChatCubit>().messages.length - 1)
                          const SizedBox(height: 4),
                        if (index ==
                            context.read<ChatCubit>().messages.length - 1)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: customLoadingAnimationIndicator(),
                          )
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 16, top: 4),
                      child: BotCardItem(text: message.message));
            }));
  }
}
