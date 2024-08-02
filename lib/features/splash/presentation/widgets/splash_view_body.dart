import 'package:chatty_charm/core/models/svg_picture_model.dart';
import 'package:chatty_charm/core/utils/app_router.dart';
import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/core/widgets/custom_svg_picture.dart';
import 'package:chatty_charm/features/splash/presentation/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimationOne, slidingAnimationTwo;

  @override
  void initState() {
    initSlidingAnimation();
    navigate();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Expanded(
            child: Align(
                alignment: Alignment.center,
                child: CustomSvgPicture(
                    svg: SvgPictureModel(
                        image: Assets.imagesLogo, height: 70)))),
        SlidingText(
            slidingAnimationOne: slidingAnimationOne,
            slidingAnimationTwo: slidingAnimationTwo),
        const SizedBox(height: 16),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    slidingAnimationOne =
        Tween<Offset>(begin: const Offset(-5, 0), end: Offset.zero)
            .animate(animationController);

    slidingAnimationTwo =
        Tween<Offset>(begin: const Offset(5, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).go(AppRouter.chatView);
    });
  }
}
