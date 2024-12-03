import 'package:advanced_app/core/helpper/extensions.dart';
import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:advanced_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/routeing/routes.dart';
import '../../../../core/utils/strings/app_strings.dart';
import '../../../../core/utils/styles/text_styles.dart';
import '../widgets/doc_logo_and_name.dart';
import '../widgets/doctor_image_and_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 3.h, bottom: 30.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(
                height: 30.h,
              ),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      AppStrings.underDocText,
                      style: TextStyles.font13GrayNormal,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    PrimaryButton(
                        height: 50.h,
                        width: double.infinity,
                        borderRadius: 16.r,
                        onTap: () {
                          context.pushNamed(Routes.loginScreen);
                        },
                        text: "Get Start",
                        bgColor: AppColors.primaryBlue)
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
