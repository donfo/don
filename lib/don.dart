import 'dart:async';

import 'package:flutter/services.dart';

class Don {
  static const MethodChannel _channel =
      const MethodChannel('don');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
