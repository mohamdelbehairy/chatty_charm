import 'package:chatty_charm/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChattyCharm());
}

class ChattyCharm extends StatelessWidget {
  const ChattyCharm({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
