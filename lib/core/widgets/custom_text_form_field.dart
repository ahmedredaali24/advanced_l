import 'package:advanced_app/config/theming/styles/text_styles.dart';
import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Color? backGroundColor;

  const CustomTextFormField({
    super.key,
    this.suffixIcon,
    this.isObscureText,
    required this.hintText,
    this.hintStyle,
    this.inputTextStyle,
    this.enabledBorder,
    this.focusedBorder,
    this.contentPadding,
    this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: backGroundColor ?? AppColors.moreLightGray,
        filled: true,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.primaryBlue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.r)),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.lighterGray,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.r)),
        hintStyle: hintStyle ?? TextStyles.font14GLightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14darkBlueMedium,
    );
  }
}
