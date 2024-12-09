import 'package:advanced_app/features/home/home/logic/home_screen_states.dart';
import 'package:bloc/bloc.dart';

import '../data/models/specialization_response.dart';
import '../data/repositories/home_repository.dart';

class HomeScreenViewModel extends Cubit<HomeScreenStates> {
  final HomeRepository _repository;

  HomeScreenViewModel(this._repository)
      : super(const HomeScreenStates.initial());
  List<Data?>? dataList = [];

  Future<void> getHomeDate() async {
    emit(const HomeScreenStates.loading());
    final response = await _repository.getHomeData();
    response.when(
      success: (homeResponse) {
        dataList = homeResponse.data ?? [];
        getDoctorsList(specializationId: dataList?.first?.id);
        emit(HomeScreenStates.success(specializationResponse: dataList));
      },
      failure: (error) {
        emit(HomeSreenErrorState(error: error));
      },
    );
  }

//filter doctors
  void getDoctorsList({required int? specializationId}) {
    List<Doctors> specializationList =
        filterSpecializationById(specializationId);

    if (specializationList.isNotEmpty) {
      emit(HomeScreenStates.doctorsSuccess(specializationList));
    } else {
      emit(const HomeScreenStates.doctorsError(error: "error doctor list"));
    }
  }

  ///returns the list of doctors based on the specializationId
 List<Doctors> filterSpecializationById(int? specializationId) {
    final specialization= dataList?.firstWhere(
        (specialization) => specialization?.id == specializationId);
    return specialization?.doctors??[];
  }
}
