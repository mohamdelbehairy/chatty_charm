import 'package:chatty_charm/core/helper/bloc_observer.dart';
import 'package:chatty_charm/core/utils/svg_utils.dart';
import 'package:chatty_charm/features/auth/presentation/views/login_view.dart';
import 'package:chatty_charm/features/home/presentation/views/home_view.dart';

import 'package:chatty_charm/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/app/presentation/views/chatty_charm.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CachedSvg.svgPrecacheImage();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = SimpleBlocObserver();
  await _init();
}

Future _init() async {
  final prefs = await SharedPreferences.getInstance();
  final userID = prefs.getString('userID');
  return runApp(
      ChattyCharm(view: userID != null ? const HomeView() : const LoginView()));
}
