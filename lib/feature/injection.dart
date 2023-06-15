import 'package:flutter_dependcy_injection/feature/api.dart';
import 'package:flutter_dependcy_injection/feature/constants.dart';
import 'package:flutter_dependcy_injection/feature/log/log_manager.dart';
import 'package:get_it/get_it.dart';

class Injection {
  static final GetIt _getIt = GetIt.instance;

  void initInstances() {
    getIt
      ..registerSingleton<Api>(Api())
      ..registerSingleton<Constants>(const Constants())
      ..registerSingleton<LogManager>(LogManager());
  }

  static GetIt get getIt => _getIt;
}
