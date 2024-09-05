import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentations/providers/theme_provider.dart';

class ThemeChanger extends ConsumerWidget {
  static const String routeName = 'theme_changer';

  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(isDarkModeBoolean);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
            onPressed: () => {
              ref.read(isDarkModeBoolean.notifier).update((value) => !value)
            },
            icon: Icon(isDarkMode
                ? Icons.nightlight_outlined
                : Icons.light_mode_outlined),
          )
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedIndexColor = ref.watch(selectedIndexColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        final Color color = colors[index];

        return RadioListTile(
          value: index,
          title: Text(
            'Ester Color',
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          activeColor: color,
          groupValue: selectedIndexColor,
          onChanged: (value) {
            // Notify change
            ref.read(selectedIndexColorProvider.notifier).state = index;
          },
        );
      },
    );
  }
}
