import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:dw9_delivery_app/app/core/config/env.dart';

class CustonDio extends DioForNative {
  CustonDio()
      : super(BaseOptions(
          baseUrl: Env.i['backend_base_url'] ?? ' ',
          connectTimeout: 5000,
          receiveTimeout: 6000,
        )) {
    interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
      ),
    );
  }
  CustonDio auth() {
    return this;
  }

  CustonDio unauth() {
    return this;
  }
}
