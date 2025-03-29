import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Un simple booleano
final isDarkModeProvider = StateProvider((ref) => false);

//un simple int
final selectedColorProvider = StateProvider((ref) => 0);

//objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = estado = new AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
