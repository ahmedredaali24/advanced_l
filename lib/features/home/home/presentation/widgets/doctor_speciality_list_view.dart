import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/specialization_response.dart';
import 'doctors_speciality_list_item.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<Data>? dataList;

  const DoctorSpecialityListView({super.key, required this.dataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dataList?.length,
          itemBuilder: (context, index) {
            return DoctorsSpecialityListItem(
              data: dataList?[index],
              index: index,
            );
          }),
    );
  }
}
