import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specialization_response.dart';

part 'home_screen_states.freezed.dart';

@freezed
class HomeScreenStates with _$HomeScreenStates {
  const factory HomeScreenStates.initial() = _HomeSreenIntialState;

  const factory HomeScreenStates.loading() = HomeSreenLoadinglState;

  const factory HomeScreenStates.success(
      {required List<Data?>? specializationResponse}) = HomeSreenSuccessState;

  const factory HomeScreenStates.error({required String error}) =
      HomeSreenErrorState;

  //Doctors
  // const factory HomeScreenStates.doctorsLoading() = DoctorsLoadingState;

  const factory HomeScreenStates.doctorsSuccess(List<Doctors> doctorList) =DoctorsSuccessState;

  const factory HomeScreenStates.doctorsError({required String error}) =DoctorsErrorState;
}
