import 'dart:async';
import 'dart:ui';

import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeRepository {
  ThemeRepository._internal();

  static final ThemeRepository _instance = ThemeRepository._internal();

  factory ThemeRepository() {
    return _instance;
  }

  final StreamController<String> _themeStreamController = StreamController<String>.broadcast();

  Stream<String> get themeStream => _themeStreamController.stream.asBroadcastStream();

  Future<String> getThemeMode() async {
    Brightness brightness = SchedulerBinding.instance.window.platformBrightness;
    String? themeMode = (await SharedPreferences.getInstance()).getString('color_theme');
    if (themeMode != null) return themeMode;
    return brightness.name;
  }

  Future<void> setThemeMode({required String mode}) async {
    (await SharedPreferences.getInstance()).setString('color_theme', mode);
    _themeStreamController.add(mode);
  }
}
