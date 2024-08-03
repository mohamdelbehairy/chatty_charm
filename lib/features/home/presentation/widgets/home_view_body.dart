import 'package:chatty_charm/features/home/data/manager/chat/chat_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'chat_view_list_view.dart';
import 'chat_view_not_messages.dart';
import 'chat_view_text_field.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
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
        return CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
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
                      const ChatViewNotMessages(),
                    ChatViewTextField(
                        controller: controller,
                        onPressed: () async {
                          await messages.sendMessage(controller: controller);
                        }),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
