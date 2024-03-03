import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentations/views/home_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'slide_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlideAnimations();
    navigateToHome();
  }

  

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsDate.logo),
        const SizedBox(
          height: 6,
        ),
        SlideText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlideAnimations() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(kSlideDurations, () {
      Get.to(() => const HomeViews() , transition: Transition.fade);
    });
  }
}
