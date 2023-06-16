// ignore_for_file: prefer_conditional_assignment, unnecessary_null_comparison

import 'package:dio/dio.dart';
import 'package:flutter_dependcy_injection/feature/injection.dart';

import '../constants/constants.dart';

// network layout for app is here (dio, interceptors, etc.)
class NetworkManager {
  late final Dio dio;

  NetworkManager() {
    final BaseOptions baseOptions = BaseOptions(baseUrl: Injection.getIt.get<Constants>().baseUrl);
    dio = Dio(baseOptions);

    // _dio.interceptors.add(InterceptorsWrapper(
    //   onError: (e, handler) {
    //     Injection.getIt.get<Logger>().e("Log Message: ${e.message}");
    //   },
    //   onRequest: (options, handler) => {},
    //   onResponse: (response, handler) => {},
    // ));
  }
}
