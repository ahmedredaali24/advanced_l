import 'package:advanced_app/core/helper/spacing_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/utils/app_colors/app_colors.dart';
class SpeShimmerLoading extends StatelessWidget {
  const SpeShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context,index){
           return Padding(
               padding: EdgeInsetsDirectional.only(start: index==0?0:24.w),
             child: Column(
               children: [
                 Shimmer.fromColors(
                     baseColor:AppColors.lightGray,
                     highlightColor: Colors.white,
                     child:CircleAvatar(
                       radius: 24.r,
                       backgroundColor: Colors.white,
                     )


                 ),
                 verticalSpace(14),
                 Shimmer.fromColors(
                     baseColor:AppColors.lightGray,
                     highlightColor: Colors.white,
                     child: Container(
                       width: 50.w,
                       height: 14.h,
                       decoration: BoxDecoration(
                           shape: BoxShape.rectangle,
                           borderRadius: BorderRadius.circular(12.r),
                           color: AppColors.lightGray
                       ),
                     )

                 ),
               ],
             ),
           );

          }
      ),
    );
  }
}
