import 'package:flutter_bloc/flutter_bloc.dart';

part 'select_language_state.dart';

class SelectLanguageCubit extends Cubit<SelectLanguageState> {
  SelectLanguageCubit() : super(SelectLanguageInitial());

  String initLang = "en";
  void selectLanguage({required String lang}) {
    initLang = lang;
    emit(SelectLanguageSuccess());
  }
}
