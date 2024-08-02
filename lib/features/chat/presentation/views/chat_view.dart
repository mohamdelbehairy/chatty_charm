import 'package:chatty_charm/features/chat/data/manager/chat/chat_cubit.dart';
import 'package:chatty_charm/features/chat/data/manager/copy_text/copy_text_cubit.dart';
import 'package:chatty_charm/features/chat/presentation/widgets/chat_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/chat_view_app_bar.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CopyTextCubit()),
        BlocProvider(create: (context) => ChatCubit())
      ],
      child: Scaffold(
        appBar: chatViewAppBar(context),
        body: const ChatViewBody(),
      ),
    );
  }
}
