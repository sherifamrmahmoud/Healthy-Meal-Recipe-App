

import 'package:flutter/material.dart';
import 'package:nti5/core/styles/colors_manager.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData? prefixIcon;
  final Widget? suffix;
  final bool obscure;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.suffix,
    this.obscure = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: TextField(
        controller: controller,
        obscureText: obscure,

        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorsManager.greyColor, width: 1.5),
          ),
          hintText: hint,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffix,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
