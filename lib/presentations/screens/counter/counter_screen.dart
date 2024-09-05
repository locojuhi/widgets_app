import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentations/providers/counter_provider.dart';
import 'package:widgets_app/presentations/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String routeName = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeBoolean);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => {
              ref.read(isDarkModeBoolean.notifier).update((state) => !state)
            },
            icon: Icon(isDarkMode
                ? Icons.nightlight_outlined
                : Icons.light_mode_outlined),
          )
        ],
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Text(
          'Valor: $clickCounter',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          //ref.read(counterProvider.notifier).state++
          ref.read(counterProvider.notifier).update((state) => state + 1)
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
