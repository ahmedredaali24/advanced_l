import 'package:advanced_app/core/networking/apis/api_service.dart';
import 'package:advanced_app/core/networking/apis/dio_factory.dart';
import 'package:advanced_app/features/auth/register/data/repositories_impl/register_repository.dart';
import 'package:advanced_app/features/auth/register/logic/cubit.dart';
import 'package:advanced_app/features/home/home/data/api_home_screen/home_api_services.dart';
import 'package:advanced_app/features/home/home/data/repositories/home_repository.dart';
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

  ///يفضل عمل الcubit باستخدام ال registerFactory
  getIt.registerFactory<LoginViewModel>(() => LoginViewModel(getIt()));

  getIt.registerLazySingleton<RegisterRepository>(
      () => RegisterRepository(getIt()));

  ///يفضل عمل الcubit باستخدام ال registerFactory
  getIt.registerFactory<RegisterViewModel>(() => RegisterViewModel(getIt()));

  ///home
  getIt.registerLazySingleton<HomeApiServices>(() => HomeApiServices(dio));
  getIt.registerLazySingleton<HomeRepository>(() => HomeRepository(getIt()));
  // getIt.registerFactory<HomeScreenViewModel>(() => HomeScreenViewModel(getIt()));

}
