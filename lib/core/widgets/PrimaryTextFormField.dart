import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_colors/app_colors.dart';

class PrimaryTextFormField extends StatelessWidget {
  final double? borderRadius;
  final Color? fillColor;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final Function(PointerDownEvent)? onTapOutside;
  final double width, height;
  final TextEditingController controller;
  final Color? hintTextColor, prefixIconColor;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const PrimaryTextFormField(
      {super.key,
      required this.hintText,
      this.keyboardType,
      required this.controller,
      required this.width,
      required this.height,
      this.hintTextColor,
      this.fillColor,
      this.onTapOutside,
      this.prefixIcon,
      this.prefixIconColor,
      this.inputFormatters,
      this.borderRadius = 8,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.gray,
      ),
      decoration: InputDecoration(
          fillColor: fillColor ?? AppColors.primaryBlue,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: 'Inter',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: hintTextColor ?? AppColors.gray,
          ),
          prefixIcon: prefixIcon,
          prefixIconColor: prefixIconColor,
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(8)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(8)),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 3, color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          )),
      inputFormatters: inputFormatters,
      onTapOutside: onTapOutside,
    );
  }
}
