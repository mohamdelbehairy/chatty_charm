import 'package:chatty_charm/features/home/data/manager/chat/chat_cubit.dart';
import 'package:chatty_charm/features/home/data/manager/copy_text/copy_text_cubit.dart';
import 'package:chatty_charm/features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/chat_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CopyTextCubit()),
        BlocProvider(create: (context) => ChatCubit())
      ],
      child: Scaffold(
        appBar: chatViewAppBar(context),
        body: const HomeViewBody(),
      ),
    );
  }
}
