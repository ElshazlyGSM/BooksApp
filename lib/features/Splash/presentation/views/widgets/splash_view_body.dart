import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/widgets/sliding_text.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedContainer;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation(); // Start the animation
    navigateToHome();
  }

  @override
  void dispose() {
    animatedContainer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 6),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animatedContainer = AnimationController(
      vsync: this,
      duration:
          const Duration(seconds: 2), // Reduced duration for testing purposes
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animatedContainer);
    animatedContainer.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      return Get.to(
        const HomeView(),
        transition: Transition.fadeIn,
        duration: const Duration(seconds: 1),
      );
    });
  }
}
