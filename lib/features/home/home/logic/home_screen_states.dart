import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specialization_response.dart';

part 'home_screen_states.freezed.dart';

@freezed
class HomeScreenStates<T> with _$HomeScreenStates<T> {
  const factory HomeScreenStates.initial() = HomeSreenIntialState;

  const factory HomeScreenStates.loading() = HomeSreenLoadinglState;

  const factory HomeScreenStates.success(SpecializationResponse specializationResponse) = HomeSreenSuccessState;

  const factory HomeScreenStates.error({required String error}) =
      HomeSreenErrorState;
}
