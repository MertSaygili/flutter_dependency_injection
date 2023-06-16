import 'package:flutter_dependcy_injection/feature/enums/service_enums.dart';

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.CHARACTER:
        return '/character';
      default:
        return '';
    }
  }
}
