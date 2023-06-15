import 'package:logger/logger.dart';

class LogManager {
  static final Logger _logger = Logger();

  // get logger at any point in the app
  static Logger get instance => _logger;
}
