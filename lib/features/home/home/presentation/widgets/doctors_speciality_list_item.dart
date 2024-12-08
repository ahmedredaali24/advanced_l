import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theming/styles/text_styles.dart';
import '../../../../../core/helper/spacing_helper.dart';
import '../../../../../core/utils/app_colors/app_colors.dart';
import '../../data/models/specialization_response.dart';
class DoctorsSpecialityListItem extends StatelessWidget {
  final Data? data;
  final int index;

  const DoctorsSpecialityListItem({super.key, required this.data, required this.index});

  @override
  Widget build(BuildContext context) {
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
          Text(
            data?.name??'unKnown',
            style:TextStyles.font12DarkBlueRegular ,)
        ],
      ),
    );
  }
}
