import 'package:chatty_charm/core/manager/is_arabic/is_arabic_cubit.dart';
import 'package:chatty_charm/features/home/data/manager/chat/chat_cubit.dart';
import 'package:chatty_charm/core/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/custom_loading_animation_indicator.dart';
import '../../../../core/utils/get_text_align.dart';
import 'bot_card_item.dart';
import 'user_card_item.dart';

class HomeViewListView extends StatefulWidget {
  const HomeViewListView(
      {super.key,
      required this.messages,
      required this.controller,
      this.scrollController});

  final List<MessageModel> messages;
  final TextEditingController controller;
  final ScrollController? scrollController;

  @override
  State<HomeViewListView> createState() => _HomeViewListViewState();
}

class _HomeViewListViewState extends State<HomeViewListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            controller: widget.scrollController,
            physics: const BouncingScrollPhysics(),
            itemCount: widget.messages.length,
            itemBuilder: (context, index) {
              final message = widget.messages[index];
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: customLoadingAnimationIndicator())
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 16, top: 4),
                      child: BotCardItem(text: message.message));
            }));
  }
}
