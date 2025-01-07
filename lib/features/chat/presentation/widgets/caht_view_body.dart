import 'package:chatty_charm/features/chat/data/manager/get_messages/get_messages_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/svg_picture_model.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/custom_loading_animation_indicator.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_svg_picture.dart';
import '../../../../generated/l10n.dart';
import 'chat_view_list_view.dart';

class CahtViewBody extends StatelessWidget {
  const CahtViewBody({super.key});

  

  @override
  Widget build(BuildContext context) {
    var messages = context.read<GetMessagesCubit>();

    return BlocBuilder<GetMessagesCubit, GetMessagesState>(
      builder: (context, state) {
        if (state is GetMessagesLoading) {
          return Center(child: customLoadingAnimationIndicator());
        }
        if (messages.messages.isEmpty) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  CustomSvgPicture(
                      svg: SvgPictureModel(image: Assets.imagesLogo)),
                  const SizedBox(height: 12),
                  Text('${S.of(context).Chatty} ${S.of(context).Charm}',
                      style: Styles.regular34),
                  const SizedBox(height: 16),
                  Text(
                      '${S.of(context).no_messages_1}\n${S.of(context).no_messages_2}',
                      textAlign: TextAlign.center,
                      style: Styles.regular17),
                ],
              ),
            ],
          );
        }
        return ChatViewListView(messages: messages);
      },
    );
  }
}
