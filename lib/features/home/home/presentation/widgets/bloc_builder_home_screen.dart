import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpper/spacing_helper.dart';
import '../../logic/cubit.dart';
import '../../logic/home_screen_states.dart';
import 'doctor_speciality_list_view.dart';
import 'doctors_list_view.dart';

class BlocBuilderHomeScreen extends StatelessWidget {
  const BlocBuilderHomeScreen({super.key});

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
          var date = responseHome.data ?? [];

          return setupSuccess(date);
        }, error: (error) {
          return setupError();
        });
      },
    );
  }

  Widget setupLoading() {
    return const SizedBox(
      height: 100,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setupSuccess(date) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(
            dataList: date,
          ),
          verticalSpace(8),
          DoctorsListView(
            doctorsList: date[0].doctors ?? [],
          )
        ],
      ),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
