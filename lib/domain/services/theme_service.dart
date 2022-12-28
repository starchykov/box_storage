import 'package:box_storage/data/repositories/theme_repository.dart';
import 'package:flutter/cupertino.dart';

@immutable
class ThemeService {
  final ThemeRepository _themeRepository = ThemeRepository();
  late String _themeMode;

  /// Method returns current value (bool) of theme mode
  bool get isDarkMode => _themeMode == 'dark';

  Stream<String> get themeStream => _themeRepository.themeStream;

  /// User this method to update current theme mode
  Future<String> getThemeMode() async {
    _themeMode = await _themeRepository.getThemeMode();
    return _themeMode;
  }

  /// Use this method to change current application theme to the opposite value
  Future<void> changeThemeMode() async {
    await getThemeMode();
    isDarkMode ? await setLightMode() : await setDarkMode();
  }

  /// Use this method to directly set dark mode
  Future<void> setDarkMode() async {
    await _themeRepository.setThemeMode(mode: 'dark');
    await getThemeMode();
  }

  /// Use this method to directly set light mode
  Future<void> setLightMode() async {
    await _themeRepository.setThemeMode(mode: 'light');
    await getThemeMode();
  }
}
