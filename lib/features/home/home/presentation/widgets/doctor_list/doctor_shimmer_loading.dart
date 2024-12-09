import 'package:advanced_app/core/helper/spacing_helper.dart';
import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
class DoctorShimmerLoading extends StatelessWidget {
  const DoctorShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context,index){
            return Container(
              margin: EdgeInsets.only(bottom: 1.h),
              child: Row(
                children: [
                  Shimmer.fromColors(
                    baseColor:AppColors.lightGray,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 110.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.r),
                        color: Colors.white
                      ),
                    )

                  ),
                  horizontalSpace(16),
                  Expanded(
                      child: Column(
                        children: [
                          Shimmer.fromColors(
                              baseColor:AppColors.lightGray,
                              highlightColor: Colors.white,
                              child: Container(
                                width: 180.w,
                                height: 18.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: AppColors.lightGray
                                ),
                              ),

                          ),
                          verticalSpace(12),
                          Shimmer.fromColors(
                              baseColor:AppColors.lightGray,
                              highlightColor: Colors.white,
                              child: Container(
                                width: 160.w,
                                height: 14.h,
                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(12.r),
                                    color: AppColors.lightGray,
                                ),
                              ),

                          ),
                          verticalSpace(12),
                          Shimmer.fromColors(
                            baseColor:AppColors.lightGray,
                            highlightColor: Colors.white,
                            child: Container(
                              width: 160.w,
                              height: 14.h,
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(12.r),
                                color: AppColors.lightGray,
                              ),
                            ),

                          ),
                        ],
                      )
                  )
                ],

              ),

            );
            }
        )
    );
  }
}
