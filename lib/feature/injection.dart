import 'package:flutter_dependcy_injection/feature/api.dart';
import 'package:flutter_dependcy_injection/feature/constants.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

class Init {
  void initInstances() {
    // API
    getIt.registerLazySingleton<Api>(() => Api());

    // Constants
    getIt.registerLazySingleton<Constants>(() => const Constants());
  }
}
