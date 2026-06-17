

import 'package:flutter/material.dart';
import 'package:nti5/core/styles/colors_manager.dart';

class StylesManager {
  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle titleText20Style = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle titleText18StylePrimry = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorsManager.primaryColor,
  );

  static TextStyle white30Bold = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle white20Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
