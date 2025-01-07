import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

part 'is_arabic_state.dart';

class IsArabicCubit extends Cubit<IsArabicState> {
  IsArabicCubit() : super(IsArabicInitial());

  bool isArabic() {
    bool isArabic = Intl.getCurrentLocale() == "ar";
    if (isArabic) {
      emit(IsArabicSuccess());
    }
    return isArabic;
  }
}
