import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      // backgroundColor: Color(0xFF7455F7),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF7455F7)
        ),
        child: Column(
          children: [
            Image.asset('assets/images/onboarding.png'),
            Container(
              height: size.height * .4,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
                
                
              ),
            )
          ],
        ),
      ),
    );
  }
}