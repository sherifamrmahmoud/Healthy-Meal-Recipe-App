

import 'package:flutter/material.dart';
import 'package:nti5/core/styles/colors_manager.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, ColorsManager.greyColor],
                  ),
                ),
              ),
            ),

            const SizedBox(width: 10),

            Text(
              "Or continue with",
              style: TextStyle(color: ColorsManager.greyColor),
            ),

            const SizedBox(width: 10),

            Expanded(
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [ColorsManager.greyColor, Colors.transparent],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/google.png'),
            SizedBox(width: 15),

            Image.asset('assets/facebook.png'),
            SizedBox(width: 15),

            Image.asset('assets/apple.png'),
          ],
        ),
      ],
    );
  }
}
