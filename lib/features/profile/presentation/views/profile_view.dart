import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/features/auth/data/manager/signout/signout_cubit.dart';
import 'package:chatty_charm/features/profile/data/manager/delete_account/delete_account_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/helper/custom_loading_animation_indicator.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SignoutCubit()),
        BlocProvider(create: (context) => DeleteAccountCubit())
      ],
      child: BlocConsumer<SignoutCubit, SignoutState>(
        listener: (context, signState) {
          if (signState is SignoutSuccess) {
            AppRouter.go(context, AppRouter.loginView);
          }
        },
        builder: (context, signState) {
          return BlocConsumer<DeleteAccountCubit, DeleteAccountState>(
            listener: (context, deleteState) async {
              var deleteAccount = BlocProvider.of<DeleteAccountCubit>(context);
              if (deleteState is DeleteAccountSuccess) {
                AppRouter.go(context, AppRouter.loginView);
                await Future.delayed(const Duration(seconds: 1));
                final prefs = await SharedPreferences.getInstance();
                await deleteAccount.deleteUserInfo(
                    userID: prefs.getString('storeUser'));
              }
            },
            builder: (context, deleteState) {
              return ModalProgressHUD(
                inAsyncCall: signState is SignoutLoading ||
                        deleteState is DeleteAccountLoading
                    ? true
                    : false,
                progressIndicator: customLoadingAnimationIndicator(),
                child: Scaffold(
                  appBar: customAppBar(context: context),
                  body: const ProfileViewBody(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
