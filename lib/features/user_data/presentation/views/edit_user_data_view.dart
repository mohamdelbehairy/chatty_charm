import 'package:chatty_charm/core/utils/custom_snack_bar.dart';
import 'package:chatty_charm/core/widgets/no_newtwork_view.dart';
import 'package:chatty_charm/features/user_data/data/manager/update_user_data/update_user_data_cubit.dart';
import 'package:chatty_charm/features/user_data/presentation/widgets/edit_user_data_view_body.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/manager/network/network_cubit.dart';
import '../../../../core/utils/custom_loading_animation_indicator.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class EditUserDataView extends StatelessWidget {
  const EditUserDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateUserDataCubit(),
      child: BlocConsumer<UpdateUserDataCubit, UpdateUserDataState>(
        listener: (context, state) {
          if (state is UpdateUserDataSuccess) {
            customSnackBar(context, S.of(context).data_updated);
          }
        },
        builder: (context, state) {
          return BlocConsumer<NetworkCubit, ConnectivityResult>(
            listener: (context, state) {
              if (state == ConnectivityResult.none) {
                Future.delayed(const Duration(seconds: 5), () {
                  // ignore: use_build_context_synchronously
                  customSnackBar(context, S.of(context).no_internet);
                });
              }
            },
            builder: (context, state) {
              if (state == ConnectivityResult.wifi ||
                  state == ConnectivityResult.mobile ||
                  state == ConnectivityResult.bluetooth ||
                  state == ConnectivityResult.vpn ||
                  state == ConnectivityResult.ethernet) {
                return ModalProgressHUD(
                  inAsyncCall: state is UpdateUserDataLoading ? true : false,
                  progressIndicator: customLoadingAnimationIndicator(),
                  child: Scaffold(
                    appBar: customAppBar(
                        context: context, title: S.of(context).edit_profile),
                    body: EditUserDataViewBody(
                        enabled: state is UpdateUserDataLoading ? false : true),
                  ),
                );
              } else {
                return const NoNetworkView();
              }
            },
          );
        },
      ),
    );
  }
}
