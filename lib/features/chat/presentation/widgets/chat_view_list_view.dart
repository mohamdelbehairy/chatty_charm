import 'package:chatty_charm/features/chat/data/manager/chat/chat_cubit.dart';
import 'package:flutter/material.dart';

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
                  ? UserCardItem(
                      text: message.message,
                      onTap: () {
                        setState(() {
                          widget.controller.text = message.message;
                        });
                      })
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 16, top: 4),
                      child: BotCardItem(text: message.message));
            }));
  }
}
