import 'package:dio/dio.dart';

import '../../networking/apis/api_error_model.dart';

class ApiErrorHandler {
  // late ApiErrorModel apiErrorModel;

  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      //Exception error form dio : server
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "connection Timeout with the server ");
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
              message: "send Timeout in connection with the server ");
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message: "receive Timeout in connection with the server ");

        case DioExceptionType.badCertificate:
          return ApiErrorModel(
              message: "bad Certificate in connection with the server ");
        case DioExceptionType.badResponse:
          // return ApiErrorModel(
          //     message: "bad Response in connection with the server ");

          return _handleError(error.response?.data);

        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request to the server was cancelled");

        case DioExceptionType.connectionError:
          return ApiErrorModel(message: "Connection to server failed");
        case DioExceptionType.unknown:
          return ApiErrorModel(
              message: "Connection to server failed due to internet server");
        default:
          return ApiErrorModel(message: "Something went wrong");
      }
    } else {
      // default error
      return ApiErrorModel(message: "Unknown Error occurred");
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
    message: data["message"] ?? "somThing went wrong",
    code: data["code"],
    errors: data["data"],
  );
}
