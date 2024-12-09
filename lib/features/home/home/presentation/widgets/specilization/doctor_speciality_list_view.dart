import 'package:advanced_app/features/home/home/logic/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specialization_response.dart';
import 'doctors_speciality_list_item.dart';

class DoctorSpecialityListView extends StatefulWidget {
  final List<Data?>? dataList;

  const DoctorSpecialityListView({super.key, required this.dataList});

  @override
  State<DoctorSpecialityListView> createState() =>
      _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<DoctorSpecialityListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.dataList?.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedSpecializationIndex = index;
                });
                context.read<HomeScreenViewModel>().getDoctorsList(
                    specializationId: widget.dataList?[index]?.id);
              },
              child: DoctorsSpecialityListItem(
                data: widget.dataList?[index],
                index: index,
                selectedIndex:selectedSpecializationIndex
              ),
            );
          }),
    );
  }
}
