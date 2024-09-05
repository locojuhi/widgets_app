import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeBoolean = StateProvider<bool>((ref) => false);

// Inmutable
final colorListProvider = Provider((ref) => colorList);

final selectedIndexColorProvider = StateProvider((ref) => 2);

// objeto de tipo AppTheme
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// se llaman controllers or notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // Esto se vuelve mi estado
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
