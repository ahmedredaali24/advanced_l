import 'package:advanced_app/features/auth/login/data/models/login_request_body.dart';
import 'package:advanced_app/features/auth/login/data/models/login_response.dart';
import 'package:advanced_app/features/auth/register/data/models/sign_up_request_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../features/auth/register/data/models/register_response.dart';
import '../end_points/api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  // factory ApiService(Dio dio, {String? baseurl}) = _ApiService;

  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signEndpoint)
  Future<RegisterResponse> signup(@Body() SignUpRequestBody signUpRequestBody);
}
