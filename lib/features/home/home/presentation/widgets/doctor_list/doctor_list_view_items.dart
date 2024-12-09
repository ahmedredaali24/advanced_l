import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theming/styles/text_styles.dart';
import '../../../../../../core/helper/spacing_helper.dart';
import '../../../data/models/specialization_response.dart';

class DoctorListViewItems extends StatelessWidget {
  final Doctors? doctorsModel;

  const DoctorListViewItems({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),

            child: Image.asset(

              "assets/images/example.png"
              // doctorsModel?.photo?? 'assets/images/example.png'
              ,
              fit: BoxFit.cover,
            ),

            // CachedNetworkImage(
            //
            //   imageUrl:"assets/images/example.png" ,
            //   progressIndicatorBuilder: (context,url,error)=>Icon(Icons.error),
            //
            // ),
          ),
          horizontalSpace(16),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorsModel?.name ?? "name",
                    style: TextStyles.font18DarkBlueBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Text(
                    "${doctorsModel?.degree} | ${doctorsModel?.phone}",
                    style: TextStyles.font12GrayMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Text(
                    doctorsModel?.email ?? 'email',
                    style: TextStyles.font12GrayMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
