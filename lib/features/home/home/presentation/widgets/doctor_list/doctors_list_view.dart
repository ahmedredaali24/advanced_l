import 'package:flutter/material.dart';
import '../../../data/models/specialization_response.dart';
import 'doctor_list_view_items.dart';

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
