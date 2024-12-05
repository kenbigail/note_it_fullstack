import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final bool showLabel;



  const CustomTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.onTap,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.showLabel = true,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onTap: onTap,
      readOnly: onTap != null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Color(0xFFD8D8D8), // Border color #D8D8D8
            width: 1.0,
          ),
        ),
        filled: false,
        fillColor: AppColors.grey.withOpacity(0.2),
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          color: AppColors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w500, // Medium weight
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15.0,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: prefixIcon,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: suffixIcon,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(
            color: Color(0xFFD8D8D8), // Keep the same border color when focused
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(
            color: Color(0xFFD8D8D8), // Default border color
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
