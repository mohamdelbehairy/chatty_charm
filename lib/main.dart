import 'package:chatty_charm/core/helper/bloc_observer.dart';
import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const ChattyCharm());
}

class ChattyCharm extends StatelessWidget {
  const ChattyCharm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(backgroundColor: AppColors.backgroundColor),
          scaffoldBackgroundColor: AppColors.backgroundColor),
    );
  }
}
