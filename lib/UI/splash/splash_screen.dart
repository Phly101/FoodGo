import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:food_go/UI/home/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSplashScreen(
        splash: SizedBox(
          width: size.width,
          height: size.height,
          child: Image.asset('assets/images/Splash Page_02.png', fit: BoxFit.cover),
        ),
        nextScreen: const HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        backgroundColor: Colors.transparent,
        centered: true,
        splashIconSize: size.height,
      ),
    );
  }
}
