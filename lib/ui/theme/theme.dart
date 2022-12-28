import 'package:flutter/cupertino.dart';

class ApplicationTheme {
  ApplicationTheme._internal();

  static final ApplicationTheme _instance = ApplicationTheme._internal();

  factory ApplicationTheme() {
    return _instance;
  }

  CupertinoThemeData getApplicationTheme({required bool isDarkTheme}) {
    return CupertinoThemeData(
      primaryColor: CupertinoColors.activeBlue,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
    );
  }
}
