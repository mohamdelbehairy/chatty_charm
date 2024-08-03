import 'package:chatty_charm/features/auth/data/manager/login/login_cubit.dart';
import 'package:chatty_charm/features/auth/presentation/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
