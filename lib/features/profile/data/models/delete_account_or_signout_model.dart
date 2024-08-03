class DeleteAccountOrSignoutModel {
  final String title, body, buttonName;
  final Function() onTap;

  DeleteAccountOrSignoutModel(
      {required this.title,
      required this.body,
      required this.buttonName,
      required this.onTap});
}
