import 'dart:ui';

import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font32Blue700Bold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryBlue,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.blueSemi,
  );
  static TextStyle font13GrayNormal = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.gray,
  );
  static TextStyle fontPrimaryButton = TextStyle(
      color: AppColors.white,
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold,
      fontFamily: "Inter");

  static TextStyle font24BlueBold = TextStyle(
      color: AppColors.primaryBlue,
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      overflow: TextOverflow.ellipsis);

  static TextStyle font14GrayRegular = TextStyle(
    color: AppColors.gray,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    overflow: TextOverflow.ellipsis,
  );
  static TextStyle font14GLightGrayRegular = TextStyle(
    color: AppColors.lightGray,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle font14darkBlueMedium = TextStyle(
    color: AppColors.darkBlue,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    overflow: TextOverflow.ellipsis,
  );
  static TextStyle font13darkBlueRegular = TextStyle(
    color: AppColors.primaryBlue,
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    overflow: TextOverflow.ellipsis,
  );
  static TextStyle font11GrayForSmallTextRegular = TextStyle(
    color: AppColors.grayForSmallText,
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: "Gilroy",
  );
  static TextStyle font11BlackForSmallTextRegular = TextStyle(
    color: AppColors.blackForSmallText,
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: "Inter",
  );

  static TextStyle font14BlueSemiBold = TextStyle(
    color: AppColors.primaryBlue,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: "Inter",
  );
  static TextStyle font15DarkBlueMedium = TextStyle(
    color: AppColors.darkBlue,
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.medium,
    fontFamily: "Inter",
  );
  static TextStyle font18DarkBlueBold = TextStyle(
    color: AppColors.darkBlue,
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    fontFamily: "Inter",
  );
  static TextStyle font18DarkBlueSemiBold = TextStyle(
    color: AppColors.darkBlue,
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: "Inter",
  );
  static TextStyle font12GrayRegular = TextStyle(
    color: AppColors.gray,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: "Inter",
  );
  static TextStyle font12GrayMedium = TextStyle(
    color: AppColors.gray,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    fontFamily: "Inter",
  );
  static TextStyle font12BlueRegular = TextStyle(
    color: AppColors.primaryBlue,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: "Inter",
  );
  static TextStyle font12DarkBlueRegular = TextStyle(
    color: AppColors.darkBlue,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: "Inter",
  );
  static TextStyle font18WhiteMedium = TextStyle(
    color: AppColors.white,
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    fontFamily: "Inter",
  );
}
