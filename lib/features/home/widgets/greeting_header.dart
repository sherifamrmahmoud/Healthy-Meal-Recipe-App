
import 'package:flutter/material.dart';
import 'package:nti5/core/styles/colors_manager.dart';
import 'package:nti5/core/styles/styles_manager.dart';

class GreetingHeader extends StatelessWidget {
  const GreetingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.wb_sunny_outlined, color: ColorsManager.primaryColor),
            const SizedBox(width: 8),
            Text("Good Morning", style: StylesManager.titleText20Style),
          ],
        ),

        Icon(Icons.shopping_cart_outlined, size: 28),
      ],
    );
  }
}
