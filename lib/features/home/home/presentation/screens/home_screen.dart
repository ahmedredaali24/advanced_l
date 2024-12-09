import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helper/spacing_helper.dart';
import '../widgets/doctor_list/doctors_block_builder.dart';
import '../widgets/doctor_speciality_see_all.dart';
import '../widgets/doctors_blue_container.dart';
import '../widgets/home_top_bar.dart';
import '../widgets/specilization/bloc_builder_specialization.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            20.w,
            16.h,
            20.w,
            28.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialitySeeAll(),
              verticalSpace(16),
              const BlocBuilderSpecialization(),
              verticalSpace(8),
             const DoctorsBlockBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
