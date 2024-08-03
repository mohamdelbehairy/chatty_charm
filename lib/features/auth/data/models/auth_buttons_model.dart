class AuthButtonsModel {
  final String buttonName, buttonText, text;
  final Function() buttonTap, textTap;
  final bool isLoading;

  AuthButtonsModel(
      {required this.buttonName,
      required this.buttonText,
      required this.text,
      required this.buttonTap,
      required this.textTap,
      this.isLoading = false});
}
