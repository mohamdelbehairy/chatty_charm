import 'package:chatty_charm/features/user_data/data/manager/store_user_data/store_user_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/add_user_data_view_body.dart';

class AddUserDataView extends StatelessWidget {
  const AddUserDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreUserDataCubit(),
      child: const Scaffold(
        body: AddUserDataViewBody(),
      ),
    );
  }
}
