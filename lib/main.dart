import 'package:chatty_charm/core/helper/bloc_observer.dart';
import 'package:chatty_charm/core/manager/select_language/select_language_cubit.dart';
import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/manager/is_arabic/is_arabic_cubit.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(const ChattyCharm());
}

class ChattyCharm extends StatelessWidget {
  const ChattyCharm({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => IsArabicCubit()),
        BlocProvider(create: (context) => SelectLanguageCubit()),
      ],
      child: BlocBuilder<SelectLanguageCubit, SelectLanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
            locale: Locale(context.read<SelectLanguageCubit>().initLang),
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: ThemeData(
                appBarTheme: const AppBarTheme(
                    backgroundColor: AppColors.backgroundColor),
                scaffoldBackgroundColor: AppColors.backgroundColor),
          );
        },
      ),
    );
  }
}
