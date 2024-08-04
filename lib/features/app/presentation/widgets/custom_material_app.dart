import 'package:chatty_charm/core/manager/select_language/select_language_cubit.dart';
import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/core/utils/colors.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


class CustomMaterialApp extends StatelessWidget {
  const CustomMaterialApp({super.key, required this.view});
  final Widget view;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppColors.backgroundColor,
      locale: Locale(context.read<SelectLanguageCubit>().initLang),
      title: 'Chatty Charm',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: AppRouter.generateRoute,
      home: view,
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(backgroundColor: AppColors.backgroundColor),
          scaffoldBackgroundColor: AppColors.backgroundColor),
    );
  }
}
