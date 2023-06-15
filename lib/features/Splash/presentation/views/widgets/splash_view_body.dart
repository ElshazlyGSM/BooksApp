import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

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
    animatedContainer = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Reduced duration for testing purposes
    );

    slidingAnimation = Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
        .animate(animatedContainer);
    animatedContainer.forward(); // Start the animation
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
}

