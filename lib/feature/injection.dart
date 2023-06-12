import 'package:flutter_dependcy_injection/feature/api.dart';
import 'package:flutter_dependcy_injection/feature/constants.dart';
import 'package:get_it/get_it.dart';

class Init {
  final GetIt _getIt = GetIt.instance;

  void initGetIt() {
    // API
    _getIt.registerLazySingleton<Api>(() => Api());

    // Constants
    _getIt.registerLazySingleton<Constants>(() => const Constants());
  }

  GetIt get getItInstance => _getIt;
}
