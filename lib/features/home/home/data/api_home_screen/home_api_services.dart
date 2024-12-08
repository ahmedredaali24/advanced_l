import 'package:advanced_app/core/networking/end_points/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../models/specialization_response.dart';
part 'home_api_services.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiServices {
  factory HomeApiServices(Dio dio, {String baseUrl})=_HomeApiServices;

  @GET(ApiConstants.specializationEndpoint)

  Future<SpecializationResponse>getHomeData();
}
