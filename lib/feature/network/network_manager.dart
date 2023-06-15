// ignore_for_file: prefer_conditional_assignment, unnecessary_null_comparison

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dependcy_injection/feature/constants.dart';
import 'package:flutter_dependcy_injection/feature/injection.dart';
import 'package:flutter_dependcy_injection/feature/model/base_model.dart';
import 'package:logger/logger.dart';

class NetworkManager {
  static NetworkManager? _instance;
  late final Dio _dio;

  static NetworkManager get instance {
    // instance null check
    if (_instance == null) {
      _instance = NetworkManager._init();
    }

    // returns instance, nul safety
    return _instance!;
  }

  NetworkManager._init() {
    final BaseOptions baseOptions = BaseOptions(baseUrl: Injection.getIt.get<Constants>().baseUrl);
    _dio = Dio(baseOptions);

    _dio.interceptors.add(InterceptorsWrapper(
      onError: (e, handler) {
        Injection.getIt.get<Logger>().e("Log Message: ${e.message}");
      },
      onRequest: (options, handler) => {},
      onResponse: (response, handler) => {},
    ));
  }

  Future dioGet<T extends BaseModel>(String path, T model) async {
    final response = await _dio.get(path);

    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = response.data;
        if (responseBody is List) {
          return responseBody.map((e) => model.fromJson(e)).toList();
        } else if (responseBody is Map) {
          return model.fromJson(responseBody);
        }
        return responseBody;

      default:
        throw Exception("Error occured while Communication with Server with StatusCode : ${response.statusCode}");
    }
  }
}
