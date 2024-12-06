import 'package:advanced_app/core/networking/apis/api_service.dart';
import 'package:advanced_app/core/networking/apis/dio_factory.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/login/data/repositories_impl/login_repository.dart';
import '../../features/auth/login/logic/cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
// Login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerLazySingleton<LoginViewModel>(() => LoginViewModel(getIt()));
}
