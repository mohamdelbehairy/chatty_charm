import 'package:chatty_charm/core/utils/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CachedImages {
  static const _svgImages = [
    Assets.imagesWelcome,
    Assets.imagesLogo,
    Assets.imagesArrowIosLeft,
    Assets.imagesCopy,
    Assets.imagesDelete,
    Assets.imagesDislike,
    Assets.imagesDocs,
    Assets.imagesEdit,
    Assets.imagesFemale,
    Assets.imagesIconButton,
    Assets.imagesLanguage,
    Assets.imagesLike,
    Assets.imagesLogOut,
    Assets.imagesMale,
    Assets.imagesMenu,
    Assets.imagesPerson,
    Assets.imagesUser,
    Assets.imagesSendMessage,
    Assets.imagesChat,
    Assets.imagesContactUs
  ];
  static Future<void> loadSvgImages() async {
    for (var element in _svgImages) {
      var loader = SvgAssetLoader(element);
      await svg.cache
          .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }
  }
}
