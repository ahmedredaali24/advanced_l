import 'package:advanced_app/features/home/home/logic/home_screen_states.dart';
import 'package:bloc/bloc.dart';

import '../data/repositories/home_repository.dart';

class HomeScreenViewModel extends Cubit<HomeScreenStates> {
  final HomeRepository _repository;
  HomeScreenViewModel(this._repository) : super(const HomeScreenStates.initial());

  Future<void> getHomeDate() async {
    emit(const HomeScreenStates.loading());
    final response=await _repository.getHomeData();
    response.when(
        success: (homeResponse){
          emit(HomeSreenSuccessState(homeResponse));
        },
        failure: (error){
          emit(HomeSreenErrorState(error: error));
        },
    );
  }

}
