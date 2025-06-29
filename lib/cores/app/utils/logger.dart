import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

mixin AppLogger {
  static Logger logger = Logger();
  static void errorLogs(String message) {
    if (kDebugMode) {
      logger.e(message);
    }
  }

  static void infoLogs(String message) {
    if (kDebugMode) {
      logger.i(message);
    }
  }

  static void warningLogs(String message) {
    if (kDebugMode) {
      logger.w(message);
    }
  }
}
