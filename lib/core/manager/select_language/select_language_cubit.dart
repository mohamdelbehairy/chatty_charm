import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'select_language_state.dart';

class SelectLanguageCubit extends Cubit<SelectLanguageState> {
  SelectLanguageCubit() : super(SelectLanguageInitial()) {
    getLanguage();
  }

  String initLang = "en";
  void selectLanguage({required String lang}) async {
    await saveLanguage(lang: lang);
    initLang = lang;
    emit(SelectLanguageSuccess());
  }

  Future<void> saveLanguage({required String lang}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("lang", lang);
  }

  void getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    log('lang befor: $initLang');
    initLang = prefs.getString("lang") ?? "en";
    log('lang after: $initLang');
    emit(SelectLanguageSuccess());
  }
}
