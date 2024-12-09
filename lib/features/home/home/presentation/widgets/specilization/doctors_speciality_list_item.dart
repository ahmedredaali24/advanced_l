import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theming/styles/text_styles.dart';
import '../../../../../../core/helper/spacing_helper.dart';
import '../../../../../../core/utils/app_colors/app_colors.dart';
import '../../../data/models/specialization_response.dart';

class DoctorsSpecialityListItem extends StatelessWidget {
  final Data? data;
  final int index;
  final int selectedIndex;

  const DoctorsSpecialityListItem(
      {super.key,
      required this.data,
      required this.index,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        children: [
          index == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.darkBlue,
                      ),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: AppColors.lightBlue,
                    child: Image.asset(
                      "assets/images/man_doct.png",
                      height:  42.h ,
                      width: 42.w ,
                    ),
                  ),
                )
              : CircleAvatar(
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
            data?.name ?? 'unKnown',
            style:index==selectedIndex?
                TextStyles.font14darkBlueMedium
                :

            TextStyles.font12DarkBlueRegular,
          )
        ],
      ),
    );
  }
}
