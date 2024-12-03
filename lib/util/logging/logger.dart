import 'package:logger/logger.dart';

class TLogger {
  static final Logger _logger =
      Logger(printer: PrettyPrinter(), level: Level.debug);

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message,
        error: error, stackTrace: stackTrace ?? StackTrace.current);
  }

  static void warning(String message) {
    _logger.w(message);
  }
}
