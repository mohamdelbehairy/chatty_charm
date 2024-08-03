import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/features/auth/data/manager/signout/signout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../widgets/profile_view_app_bar.dart';
import '../widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignoutCubit(),
      child: BlocConsumer<SignoutCubit, SignoutState>(
        listener: (context, state) {
          if (state is SignoutSuccess) {
            GoRouter.of(context).go(AppRouter.loginView);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is SignoutLoading ? true : false,
            progressIndicator: LoadingAnimationWidget.staggeredDotsWave(
                color: AppColors.primaryColor, size: 40),
            child: Scaffold(
              appBar: profileViewAppBar(context),
              body: const ProfileViewBody(),
            ),
          );
        },
      ),
    );
  }
}
