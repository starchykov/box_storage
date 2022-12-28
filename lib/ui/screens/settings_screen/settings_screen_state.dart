class SettingsScreenState {
  final bool isDarkMode;

  const SettingsScreenState({
    this.isDarkMode = false,
  });

  SettingsScreenState copyWith({
    bool? isDarkMode,
  }) {
    return SettingsScreenState(
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}