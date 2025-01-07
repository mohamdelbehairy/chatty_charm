import 'package:chatty_charm/core/utils/custom_snack_bar.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/get_text_align.dart';
import '../../../../core/manager/is_arabic/is_arabic_cubit.dart';
import '../../../home/presentation/widgets/bot_card_item.dart';
import '../../../home/presentation/widgets/user_card_item.dart';
import '../../data/manager/get_messages/get_messages_cubit.dart';

class ChatViewListView extends StatelessWidget {
  const ChatViewListView({super.key, required this.messages});

  final GetMessagesCubit messages;

  @override
  Widget build(BuildContext context) {
    var isArabic = context.read<IsArabicCubit>().isArabic();
    return ListView.builder(
        reverse: true,
        physics: const BouncingScrollPhysics(),
        itemCount: messages.messages.length,
        itemBuilder: (context, index) {
          final message = messages.messages[index];
          return message.isUser
              ? Column(
                  crossAxisAlignment: isArabic && getTextAlign(message.message)
                      ? CrossAxisAlignment.start
                      : !isArabic && !getTextAlign(message.message)
                          ? CrossAxisAlignment.start
                          : !isArabic && getTextAlign(message.message)
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.end,
                  children: [
                    UserCardItem(
                        text: message.message,
                        onTap: () {
                          customSnackBar(context, S.of(context).available_soon);
                        }),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.only(bottom: 16, top: 4),
                  child: BotCardItem(text: message.message));
        });
  }
}
