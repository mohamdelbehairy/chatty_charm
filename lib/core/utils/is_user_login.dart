import 'package:chatty_charm/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/app/presentation/views/chatty_charm.dart';
import '../../features/auth/presentation/views/login_view.dart';

Future<void> isUserLogin() async {
  final prefs = await SharedPreferences.getInstance();
  final userID = prefs.getString('userID');
  runApp(
      ChattyCharm(view: userID != null ? const HomeView() : const LoginView()));
}
