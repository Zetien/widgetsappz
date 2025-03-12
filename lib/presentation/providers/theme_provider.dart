import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Un simple booleano
final isDarkModeProvider = StateProvider((ref) => false);

//un simple int
final selectedIndexColorProvider = StateProvider((ref) => 0);
