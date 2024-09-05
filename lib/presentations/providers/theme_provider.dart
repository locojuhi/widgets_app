import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeBoolean = StateProvider<bool>((ref) => false);

// Inmutable
final colorListProvider = Provider((ref) => colorList);

final selectedIndexColorProvider = StateProvider((ref) => 2);
