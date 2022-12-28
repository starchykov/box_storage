import 'package:box_storage/domain/services/theme_service.dart';
import 'package:box_storage/ui/screens/settings_screen/settings_screen_state.dart';
import 'package:flutter/material.dart';

class SettingsScreenViewModel extends ChangeNotifier {
  final BuildContext context;
  final ThemeService _themeService = ThemeService();

  SettingsScreenState _state = SettingsScreenState();

  SettingsScreenState get state => _state;

  SettingsScreenViewModel({required this.context}) {
    initialize();
  }

  void initialize() async {
    await _themeService.getThemeMode();
    _state = _state.copyWith(isDarkMode: _themeService.isDarkMode);
    notifyListeners();
  }

  Future<void> onChangeTheme() async {
    await _themeService.changeThemeMode();
    _state = _state.copyWith(isDarkMode: _themeService.isDarkMode);
    notifyListeners();
  }
}