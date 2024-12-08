import 'package:advanced_app/core/helpper/spacing_helper.dart';
import 'package:advanced_app/features/home/home/presentation/widgets/doctor_list_view_items.dart';
import 'package:flutter/material.dart';
import '../../data/models/specialization_response.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors>?doctorsList;
  const DoctorsListView({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: doctorsList?.length,
            itemBuilder: (context, index) {
              return DoctorListViewItems(doctorsModel: doctorsList?[index],);
            }));
  }
}
