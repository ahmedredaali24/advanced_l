import 'package:advanced_app/core/helpper/spacing_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theming/styles/text_styles.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 12.h),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        "assets/images/example.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    horizontalSpace(16),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "name",
                          style: TextStyles.font18DarkBlueBold,
                          overflow: TextOverflow.ellipsis,
                        ),
                        verticalSpace(5),
                        Text(
                          "degree | 0101857879",
                          style: TextStyles.font12GrayMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                        verticalSpace(5),
                        Text(
                          "email@gmail.com",
                          style: TextStyles.font12GrayMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ))
                  ],
                ),
              );
            }));
  }
}
