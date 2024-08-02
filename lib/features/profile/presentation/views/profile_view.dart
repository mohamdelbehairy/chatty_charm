import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/utils/styles.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Profile', style: Styles.regular15),
          leading: Center(
              child: CustomSvgPicture(
                  svg: SvgPictureModel(
                      image: Assets.imagesArrowIosLeft,
                      height: 30,
                      onTap: () => GoRouter.of(context).pop())))),
      body: const ProfileViewBody(),
    );
  }
}
