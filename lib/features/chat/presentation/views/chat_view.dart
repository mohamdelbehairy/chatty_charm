import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:chatty_charm/features/chat/data/manager/chat/chat_cubit.dart';
import 'package:chatty_charm/features/chat/data/manager/copy_text/copy_text_cubit.dart';
import 'package:chatty_charm/features/chat/presentation/widgets/chat_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/assets.dart';

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
        appBar: AppBar(
          leading: Center(
            child: CustomSvgPicture(
              svg: SvgPictureModel(
                  image: Assets.imagesMenu, height: 35, fit: BoxFit.scaleDown),
            ),
          ),
          actions: [
            CustomSvgPicture(
                svg: SvgPictureModel(image: Assets.imagesUser, height: 30)),
            const SizedBox(width: 16),
          ],
        ),
        body: const ChatViewBody(),
      ),
    );
  }
}
