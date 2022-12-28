
import 'package:flutter/cupertino.dart';

@immutable
class AppState {
  final bool isDarkTheme;
  final bool isOfflineMode;

  const AppState({
    required this.isDarkTheme,
    required this.isOfflineMode,
  });

  AppState copyWith({
    bool? isDarkTheme,
    bool? isOfflineMode,
  }) {
    return AppState(
      isDarkTheme: isDarkTheme ?? this.isDarkTheme,
      isOfflineMode: isOfflineMode ?? this.isOfflineMode,
    );
  }
}