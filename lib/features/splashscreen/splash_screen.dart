import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kit/Core/constants/appimages.dart';
import 'package:kit/Core/functions/navigation.dart';
import 'package:kit/features/home/pages/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      pushwithReplacement(context, const WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SvgPicture.asset(AppImages.logoSvg)],
          ),
        ],
      ),
    );
  }
}
