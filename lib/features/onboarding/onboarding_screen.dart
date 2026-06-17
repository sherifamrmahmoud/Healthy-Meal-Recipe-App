

import 'package:flutter/material.dart';
import 'package:nti5/core/styles/colors_manager.dart';
import 'package:nti5/core/styles/styles_manager.dart';
import 'package:nti5/core/widgtes/button_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //hight
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset('assets/onboarding.png'),
          Center(child: SizedBox(height: height * 0.07)),
          Text(
            'Help your path to health \n goals with happiness',
            style: StylesManager.white30Bold,
          ),

          SizedBox(height: height * 0.08),
          ButtonWidget(
            onpress: () {
              Navigator.pushNamed(context, '/signup');
            },
            text: 'Start',
          ),
        ],
      ),
    );
  }
}
