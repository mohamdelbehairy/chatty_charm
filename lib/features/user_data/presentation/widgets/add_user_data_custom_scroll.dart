import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/presentation/widgets/welcome_auth_section.dart';
import '../../data/manager/store_user_data/store_user_data_cubit.dart';
import 'add_user_data_button.dart';
import 'user_data_list_view.dart';

class AddserDataCustomScroll extends StatefulWidget {
  const AddserDataCustomScroll({super.key});

  @override
  State<AddserDataCustomScroll> createState() => _AddserDataCustomScrollState();
}

class _AddserDataCustomScrollState extends State<AddserDataCustomScroll> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController gender = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    username.dispose();
    gender.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreUserDataCubit, StoreUserDataState>(
      listener: (context, state) {
        if (state is StoreUserDataSuccess) {
          AppRouter.go(context, AppRouter.loginView);
          firstName.clear();
          lastName.clear();
          username.clear();
          gender.clear();
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              WelcomeAuthSection(
                isAllow: false,
                  text:
                      '${S.of(context).add_user_data_view_1}\n${S.of(context).add_user_data_view_2}'),
              UserDataListView(
                  enabled: state is StoreUserDataLoading ? false : true,
                  firstName: firstName,
                  lastName: lastName,
                  username: username,
                  gender: gender),
              const SizedBox(height: 8),
              AddUserDataButton(
                  isLoading: state is StoreUserDataLoading ? true : false,
                  firstName: firstName,
                  lastName: lastName,
                  username: username,
                  gender: gender,
                  formKey: formKey),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
