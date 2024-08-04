import 'package:chatty_charm/features/auth/presentation/views/login_view.dart';
import 'package:chatty_charm/features/auth/presentation/views/register_view.dart';
import 'package:chatty_charm/features/chat/presentation/views/chat_view.dart';
import 'package:chatty_charm/features/home/presentation/views/home_view.dart';
import 'package:chatty_charm/features/profile/presentation/views/profile_view.dart';
import 'package:chatty_charm/features/splash/presentation/views/splash_view.dart';
import 'package:chatty_charm/features/user_data/presentation/views/add_user_data_view.dart';
import 'package:chatty_charm/features/user_data/presentation/views/edit_user_data_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const registerView = "/registerView";
  static const homeView = "/homeView";
  static const profileView = "/profileView";
  static const loginView = "/loginView";
  static const addUserDataView = "/addUserDataView";
  static const editUserDataView = "/editUserDataView";
  static const chatView = "/chatView";

  // static final router = GoRouter(
  //   routes: [
  //     GoRoute(path: '/', builder: (context, state) => const SplashView()),
  //     GoRoute(
  //         path: registerView,
  //         builder: (context, state) => const RegisterView()),
  //     GoRoute(path: homeView, builder: (context, state) => const HomeView()),
  //     GoRoute(
  //         path: profileView, builder: (context, state) => const ProfileView()),
  //     GoRoute(path: loginView, builder: (context, state) => const LoginView()),
  //     GoRoute(
  //         path: addUserDataView,
  //         builder: (context, state) => const AddUserDataView()),
  //     GoRoute(
  //         path: editUserDataView,
  //         builder: (context, state) => const EditUserDataView()),
  //     GoRoute(path: chatView, builder: (context, state) => const ChatView()),
  //   ],
  // );

  static void push(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void pushAndReplace(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  static void go(BuildContext context, String routeName) {
    Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => false);
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/registerView':
        return MaterialPageRoute(builder: (context) => const RegisterView());
      case '/homeView':
        return MaterialPageRoute(builder: (context) => const HomeView());
      case '/profileView':
        return MaterialPageRoute(builder: (context) => const ProfileView());
      case '/loginView':
        return MaterialPageRoute(builder: (context) => const LoginView());
      case '/addUserDataView':
        return MaterialPageRoute(builder: (context) => const AddUserDataView());
      case '/editUserDataView':
        return MaterialPageRoute(
            builder: (context) => const EditUserDataView());
      case '/chatView':
        return MaterialPageRoute(builder: (context) => const ChatView());
      default:
        return MaterialPageRoute(builder: (context) => const SplashView());
    }
  }
}
