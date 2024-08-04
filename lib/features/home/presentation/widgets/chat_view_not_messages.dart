import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:chatty_charm/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeViewNotMessages extends StatelessWidget {
  const HomeViewNotMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          CustomSvgPicture(svg: SvgPictureModel(image: Assets.imagesLogo)),
          const SizedBox(height: 12),
          Text('${S.of(context).Chatty} ${S.of(context).Charm}',
              style: Styles.regular34),
          const SizedBox(height: 16),
          Text(S.of(context).helper,
              textAlign: TextAlign.center, style: Styles.regular17),
          const SizedBox(height: 24),
          Text(
            '${S.of(context).expamle}\n ${S.of(context).goes_here}',
            textAlign: TextAlign.center,
            style: Styles.regular17.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
