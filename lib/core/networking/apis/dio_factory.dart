import 'package:advanced_app/core/helper/shared_pref_helper.dart';
import 'package:advanced_app/core/utils/constants/shared_pref_keys.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      // aaDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void aaDioHeaders() async {
    dio?.options.headers = {
      "Accept": "application/json",
      "Authorization":
          "Bearer ${await SharedPrefHelper.getString(SharedPrefKeys.userToken)}"
    };
  }

  // static void setTokenAfterLogin(String token) {
  //   dio?.options.headers = {"Authorization": "Bearer $token"};
  // }

  static void addDioInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
    ));
    dio?.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        // استرداد التوكين الديناميكي من SharedPrefHelper
        final token =
            await SharedPrefHelper.getString(SharedPrefKeys.userToken);

        // إضافة هيدر Authorization
        options.headers.addAll({
          "Authorization": "Bearer $token",
        });

        return handler.next(options);
      },
      onError: (error, handler) {
        // يمكنك التعامل مع الأخطاء هنا إذا لزم الأمر
        return handler.next(error);
      },
      onResponse: (response, handler) {
        // تعامل مع الرد إذا لزم الأمر
        return handler.next(response);
      },
    ));
  }
}
