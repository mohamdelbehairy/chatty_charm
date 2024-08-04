import 'package:flutter/material.dart';

import '../../data/manager/chat/chat_cubit.dart';
import 'chat_view_not_messages.dart';
import 'home_text_field_section.dart';
import 'home_view_list_view.dart';

class HomeCustomScroll extends StatelessWidget {
  const HomeCustomScroll(
      {super.key,
      required this.messages,
      required this.controller,
      required this.scrollController});

  final ChatCubit messages;
  final TextEditingController controller;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 8),
          if (messages.messages.isNotEmpty)
            HomeViewListView(
                messages: messages.messages,
                controller: controller,
                scrollController: scrollController)
          else
            const HomeViewNotMessages(),
          HomeTextFieldSection(controller: controller, messages: messages),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
