import 'package:chatty_charm/core/utils/assets.dart';
import 'package:chatty_charm/features/splash/presentation/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        const SizedBox(height: 8),
        Expanded(
            child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(Assets.imagesLogo, height: 70))),
        SlidingText(
            slidingAnimationOne: slidingAnimationOne,
            slidingAnimationTwo: slidingAnimationTwo),
        const SizedBox(height: 8),
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
}
