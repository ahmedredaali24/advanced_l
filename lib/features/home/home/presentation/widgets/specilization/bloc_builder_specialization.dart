import 'package:advanced_app/features/home/home/presentation/widgets/specilization/spe_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../../../core/helper/spacing_helper.dart';
import '../../../logic/cubit.dart';
import '../../../logic/home_screen_states.dart';
import '../doctor_list/doctor_shimmer_loading.dart';
import 'doctor_speciality_list_view.dart';

class BlocBuilderSpecialization extends StatelessWidget {
  const BlocBuilderSpecialization({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenViewModel, HomeScreenStates>(
      buildWhen: (previous, current) =>
          current is HomeSreenLoadinglState ||
          current is HomeSreenSuccessState ||
          current is HomeSreenErrorState,
      builder: (context, state) {
        return state.maybeWhen(orElse: () {
          return const SizedBox.shrink();
        }, loading: () {
          return setupLoading();
        }, success: (responseHome) {
          var date = responseHome ?? [];

          return setupSuccess(date);
        }, error: (error) {
          return setupError();
        });
      },
    );
  }

  Widget setupLoading() {
    return Expanded(
        child: Column(
      children: [
        const SpeShimmerLoading(),
        verticalSpace(8),
        const DoctorShimmerLoading()
      ],
    ));
  }

  Widget setupSuccess(date) {
    return DoctorSpecialityListView(
      dataList: date,
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
