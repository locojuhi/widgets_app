import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String routeName = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_rounded),
        onPressed: (){
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(
        spacing: 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          ElevatedButton(onPressed: (){}, child: const Text('Elevated')),
          const ElevatedButton(onPressed: null, child: Text('Elevated Disable')),
          ElevatedButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.access_alarm_rounded),
            label: const Text('Elevated Icon')),
          FilledButton(onPressed: (){}, child: const Text('Filled')),
          FilledButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.accessibility_new),
            label: const Text('Filled Icon'),
          ),
          OutlinedButton(
              onPressed: (){},
              child: const Text('Outlined')
          ),
          OutlinedButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.terminal),
            label: const Text('Outlined icon'),
          ),
          TextButton(
            onPressed: (){},
            child: const Text('Text Button')
          ),
          TextButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.account_box_outlined),
            label: const Text('Text Icon'),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.app_registration_rounded)
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.app_registration_rounded),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(color.primary),
              iconColor: const MaterialStatePropertyAll(Colors.white),
            ),
          )


        ],
      ),
    );
  }
}
