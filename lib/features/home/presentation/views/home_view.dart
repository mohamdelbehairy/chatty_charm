import 'package:chatty_charm/core/helper/custom_snack_bar.dart';
import 'package:chatty_charm/core/manager/network/network_cubit.dart';
import 'package:chatty_charm/features/home/presentation/widgets/home_view_body.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/no_newtwork_view.dart';
import '../widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NetworkCubit, ConnectivityResult>(
      listener: (context, state) {
        if (state == ConnectivityResult.none) {
          Future.delayed(const Duration(seconds: 5), () {
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
          return Scaffold(
            appBar: homeViewAppBar(context),
            body: const HomeViewBody(),
          );
        } else {
          return const NoNetworkView();
        }
      },
    );
  }
}

