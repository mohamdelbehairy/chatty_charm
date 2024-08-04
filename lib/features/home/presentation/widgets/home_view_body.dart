import 'package:chatty_charm/core/manager/get_user_data/get_user_data_cubit.dart';
import 'package:chatty_charm/features/home/data/manager/chat/chat_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_custom_scroll.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  TextEditingController controller = TextEditingController();
  final scrollController = ScrollController();

  @override
  void initState() {
    context.read<GetUserDataCubit>().getUserData();

    super.initState();
  }

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
      },
      builder: (context, state) {
        return CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverFillRemaining(
                hasScrollBody: true,
                child: HomeCustomScroll(
                    messages: messages,
                    controller: controller,
                    scrollController: scrollController))
          ],
        );
      },
    );
  }
}
