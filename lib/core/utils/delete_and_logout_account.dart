import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/data/manager/signout/signout_cubit.dart';
import '../../features/profile/data/manager/delete_account/delete_account_cubit.dart';
import '../../features/profile/data/models/delete_account_or_signout_model.dart';
import '../../features/profile/presentation/widgets/delete_account_or_signout_bottom_sheet.dart';
import '../widgets/custom_bottom_sheet.dart';

Future<dynamic> logout(BuildContext context) {
  return customBottomSheet(
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

Future<dynamic> deleteAccount(BuildContext context) {
  return customBottomSheet(
      context: context,
      child: DeleteAccountOrLoginBottomSheet(
          deleteAccountOrSignoutModel: DeleteAccountOrSignoutModel(
              title: S.of(context).delete_account_,
              body: S.of(context).delete_message,
              buttonName: S.of(context).delete,
              onTap: () async {
                Navigator.pop(context);
                await BlocProvider.of<DeleteAccountCubit>(context)
                    .deleteAccount();
              })));
}
