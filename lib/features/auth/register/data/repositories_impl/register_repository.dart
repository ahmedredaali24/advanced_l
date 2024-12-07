import 'package:advanced_app/features/auth/login/data/models/login_request_body.dart';
import 'package:advanced_app/features/auth/login/data/models/login_response.dart';
import 'package:advanced_app/features/auth/register/data/models/sign_up_request_body.dart';

import '../../../../../core/networking/apis/api_result.dart';
import '../../../../../core/networking/apis/api_service.dart';
import '../models/register_response.dart';

class RegisterRepository {
  final ApiService _apiService;

  RegisterRepository(this._apiService);

  Future<ApiResult<RegisterResponse>> signup(
      SignUpRequestBody signRequestBody) async {
    try {
      var response = await _apiService.signup(signRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure("error");
    }
  }
}
