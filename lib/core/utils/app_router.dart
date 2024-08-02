import 'package:chatty_charm/features/auth/presentation/views/register_view.dart';
import 'package:chatty_charm/features/chat/presentation/views/chat_view.dart';
import 'package:chatty_charm/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const registerView = "/registerView";
  static const chatView = "/chatView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
          path: registerView,
          builder: (context, state) => const RegisterView()),
      GoRoute(path: chatView, builder: (context, state) => const ChatView()),
    ],
  );
}
