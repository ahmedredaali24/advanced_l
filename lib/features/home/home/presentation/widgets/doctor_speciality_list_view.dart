import 'package:advanced_app/config/theming/styles/text_styles.dart';
import 'package:advanced_app/core/helpper/spacing_helper.dart';
import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28.r,
                    backgroundColor: AppColors.lightBlue,
                    child: Image.asset(
                      "assets/images/man_doct.png",
                      height: 40.h,
                      width: 40.w,
                    ),
                    
                  ),
                  verticalSpace(8),
                  Text("Specialization",style:TextStyles.font12DarkBlueRegular ,)
                ],
              ),
            );
          }),
    );
  }
}
