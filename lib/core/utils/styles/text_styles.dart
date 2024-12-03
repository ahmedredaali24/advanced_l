import 'dart:ui';

import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle font32Blue700Bold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlue,
  );
  static TextStyle font13GrayNormal = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.gray,
  );
  static TextStyle fontPrimaryButton = TextStyle(
      color: AppColors.white,
      fontSize: 16.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis);
}
