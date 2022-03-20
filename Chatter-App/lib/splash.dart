import 'package:flutter/material.dart';
import 'dart:async';
// ignore: import_of_legacy_library_into_null_safe
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:vexpocd/introduction_animation/introduction_animation_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = const Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const IntroductionAnimationScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //const SizedBox(height: 90),
          Image.asset('assets/logo.png'),
          GradientText(
            'VexpOcd',
            style: const TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              const Color.fromARGB(255, 0, 118, 197),
              const Color.fromARGB(255, 197, 194, 194),
              // const Color.fromARGB(255, 107, 4, 110),
              const Color.fromARGB(255, 147, 84, 206),
            ],
          ),
         const SizedBox(height: 60),
       Center(
          child: SizedBox(
            height: 80,
            child: Lottie.asset('assets/89023-loading-circles.json'),
          )
          ),
        ],
        //  children: Lottie.asset('assets/news_yellow.json'),
      ),
    );
  }
}
