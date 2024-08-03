class ProfileListTileModel {
  final String title, image;
  final int index;
  final double? height;

  ProfileListTileModel(
      {required this.title,
      required this.image,
      required this.index,
      this.height});
}
