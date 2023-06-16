import 'package:get_it/get_it.dart';

import 'constants/constants.dart';
import 'log/log_manager.dart';
import 'network/network_manager.dart';

class Injection {
  static final GetIt getIt = GetIt.instance;

  void initInstances() {
    getIt
      ..registerSingleton<Constants>(const Constants())
      ..registerSingleton<LogManager>(LogManager())
      ..registerSingleton<NetworkManager>(NetworkManager());
  }
}
