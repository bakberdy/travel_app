import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/onboarding_bg.png', fit: .cover),
          ),
          Positioned(
            top: 120,
            right: 0,
            left: 0,
            child: Align(
              alignment: .topCenter,
              child: Text(
                'Aspen',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
