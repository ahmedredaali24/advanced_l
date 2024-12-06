import 'package:advanced_app/features/auth/login/data/models/login_request_body.dart';
import 'package:advanced_app/features/auth/login/data/models/login_response.dart';

import '../../../../../core/networking/apis/api_result.dart';
import '../../../../../core/networking/apis/api_service.dart';

class LoginRepository {
  final ApiService _apiService;

  LoginRepository(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    await _apiService.login(loginRequestBody);
    try {
      var response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure("error");
    }
  }
}
