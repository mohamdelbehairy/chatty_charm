import 'package:chatty_charm/core/utils/custom_snack_bar.dart';
import 'package:chatty_charm/features/chat/data/manager/delete_messages/delete_messages_cubit.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/utils/custom_loading_animation_indicator.dart';
import '../widgets/caht_view_body.dart';
import '../widgets/chat_view_app_bar.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeleteMessagesCubit(),
      child: BlocConsumer<DeleteMessagesCubit, DeleteMessagesState>(
        listener: (context, state) {
          if (state is DeleteMessagesSuccess) {
            customSnackBar(context, S.of(context).delete_success);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is DeleteMessagesLoading ? true : false,
            progressIndicator: customLoadingAnimationIndicator(),
            child: Scaffold(
              appBar: chatViewAppBar(context,),
              body: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: CahtViewBody()),
            ),
          );
        },
      ),
    );
  }
}
