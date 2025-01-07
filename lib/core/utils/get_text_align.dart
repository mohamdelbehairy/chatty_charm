bool getTextAlign(String text) {
  final isArabic = text.runes.any((rune) => rune >= 0x0600 && rune <= 0x06FF);
  return isArabic ? true : false;
}
