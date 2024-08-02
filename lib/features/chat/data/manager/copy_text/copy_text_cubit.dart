import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'copy_text_state.dart';

class CopyTextCubit extends Cubit<CopyTextState> {
  CopyTextCubit() : super(CopyTextInitial());

  void copyText(String text) {
    Clipboard.setData(ClipboardData(text: text));
    emit(CopyTextSuccess());
  }
}
