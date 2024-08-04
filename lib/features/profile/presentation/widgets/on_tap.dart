import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/features/auth/data/manager/signout/signout_cubit.dart';
import 'package:chatty_charm/features/profile/data/models/delete_account_or_signout_model.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_bottom_sheet.dart';
import 'delete_account_or_signout_bottom_sheet.dart';
import 'language_bottom_sheet.dart';

onTap(BuildContext context, int index) {
  if (index == 0) {
    AppRouter.push(context, AppRouter.editUserDataView);
  } else if (index == 1) {
    customBottomSheet(context: context, child: const LanguageBottomSheet());
  } else if (index == 2) {
    AppRouter.push(context, AppRouter.chatView);
  } else if (index == 3) {
    customBottomSheet(
        context: context,
        child: DeleteAccountOrLoginBottomSheet(
            deleteAccountOrSignoutModel: DeleteAccountOrSignoutModel(
                title: S.of(context).delete_account_,
                body: S.of(context).delete_message,
                buttonName: S.of(context).delete,
                onTap: () {})));
  } else {
    customBottomSheet(
        context: context,
        child: DeleteAccountOrLoginBottomSheet(
            deleteAccountOrSignoutModel: DeleteAccountOrSignoutModel(
                title: S.of(context).logout_title,
                body: S.of(context).logout_message,
                buttonName: S.of(context).log_out,
                onTap: () async {
                  Navigator.pop(context);
                  await BlocProvider.of<SignoutCubit>(context).signout();
                })));
  }
}
