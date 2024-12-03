import 'package:advanced_app/core/utils/assets_images/assets_images.dart';
import 'package:advanced_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/strings/app_strings.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/images/logo_back.svg"),
        Container(
          ///لتداخل الالوان مع
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,

                  ///اامتي هيقف انتشار اللون
                  stops: const [
                    /// Colors.white,
                    0.14,

                    /// Colors.white.withOpacity(0.0),
                    0.4,
                  ])),
          child: Image.asset(AssetsImages.doctorOnboarding),
        ),
        Positioned(
          bottom: 30.h,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              textAlign: TextAlign.center, // overflow: TextOverflow.ellipsis,
              AppStrings.onDocText,
              style: TextStyles.font32Blue700Bold.copyWith(height: 1.1.h),
            ),
          ),
        )
      ],
    );
  }
}
