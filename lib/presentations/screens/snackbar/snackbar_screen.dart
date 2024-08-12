import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String routeName = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'ok!', onPressed: () {}),
      duration: const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('¿Estas seguro?'),
              content: const Text('Lorem ipsum dolore, lorem ipsum dolore'),
              actions: [
                TextButton(
                  onPressed: () => context.pop(),
                  child: const Text('Cancelar'),
                ),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostar Snackbar'),
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                      context: context,
                      children: [const Text('lorem ipsum dolore.')]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text('Mostrar dialogo'))
          ],
        ),
      ),
    );
  }
}
