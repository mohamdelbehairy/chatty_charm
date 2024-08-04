import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/widgets/custom_app_bar.dart';
import 'package:chatty_charm/core/widgets/custom_bottom_sheet.dart';
import 'package:chatty_charm/features/chat/data/manager/delete_messages/delete_messages_cubit.dart';
import 'package:chatty_charm/features/profile/data/models/delete_account_or_signout_model.dart';
import 'package:chatty_charm/features/profile/presentation/widgets/delete_account_or_signout_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/manager/is_arabic/is_arabic_cubit.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_svg_picture.dart';
import '../../../../generated/l10n.dart';

AppBar chatViewAppBar(BuildContext context) {
  var message = BlocProvider.of<DeleteMessagesCubit>(context);

  return customAppBar(context: context, title: S.of(context).chat, actions: [
    Transform.rotate(
      angle: context.read<IsArabicCubit>().isArabic() ? 180 * 3.14 / 180 : 0,
      child: CustomSvgPicture(
        svg: SvgPictureModel(
            image: Assets.imagesDelete,
            height: 25,
            onTap: () {
              customBottomSheet(
                  context: context,
                  child: DeleteAccountOrLoginBottomSheet(
                      deleteAccountOrSignoutModel: DeleteAccountOrSignoutModel(
                          title: S.of(context).delete_messages,
                          body: S.of(context).delete_messages_body,
                          buttonName: S.of(context).delete,
                          onTap: () async {
                            Navigator.pop(context);

                            if (await message.isMessage()) {
                              await message.deleteMessages();
                            }
                          })));
            }),
      ),
    ),
    const SizedBox(width: 12)
  ]);
}
