import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return kButtonColor.createShader(bounds);
            },
            child: const Text(
              "FitFork",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
