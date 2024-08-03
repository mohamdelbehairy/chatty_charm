import 'package:chatty_charm/features/auth/presentation/views/login_view.dart';
import 'package:chatty_charm/features/auth/presentation/views/register_view.dart';
import 'package:chatty_charm/features/home/presentation/views/home_view.dart';
import 'package:chatty_charm/features/profile/presentation/views/profile_view.dart';
import 'package:chatty_charm/features/splash/presentation/views/splash_view.dart';
import 'package:chatty_charm/features/user_data/presentation/views/add_user_data_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const registerView = "/registerView";
  static const chatView = "/chatView";
  static const profileView = "/profileView";
  static const loginView = "/loginView";
  static const addUserDataView = "/addUserDataView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
          path: registerView,
          builder: (context, state) => const RegisterView()),
      GoRoute(path: chatView, builder: (context, state) => const HomeView()),
      GoRoute(
          path: profileView, builder: (context, state) => const ProfileView()),
      GoRoute(path: loginView, builder: (context, state) => const LoginView()),
      GoRoute(
          path: addUserDataView,
          builder: (context, state) => const AddUserDataView()),
    ],
  );
}
