
import 'package:flutter/material.dart';
import 'package:nti5/core/styles/colors_manager.dart';
import 'package:nti5/core/styles/styles_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      //if mounted
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/onboarding');
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/splash.png')),
          Text('Popular Recipes', style: StylesManager.titleTextStyle),
        ],
      ),
    );
  }
}
