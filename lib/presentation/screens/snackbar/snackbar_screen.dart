import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnakbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, //evitar hacer tap fuera de la alerta
      builder: (context) =>  AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Fugiat nulla est dolore aliquip est adipisicing cupidatat culpa sint veniam. Sunt eu nisi ut do occaecat velit irure anim consequat qui. Consequat magna sint ad fugiat pariatur reprehenderit enim aute laborum minim officia aliqua. Occaecat enim cupidatat culpa consequat occaecat exercitation mollit magna laboris qui duis voluptate. Voluptate excepteur aliqua ad occaecat exercitation ex dolore et tempor incididunt voluptate.'),
        actions: [
          TextButton(onPressed: ()=> Navigator.of(context).pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: ()=>context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Dolore non amet exercitation tempor pariatur. Aute incididunt ad commodo magna occaecat ullamco tempor irure nisi sit ex dolor. Cillum fugiat laboris id irure proident veniam duis.')
                  ]);
                },
                child: const Text('Licencias Usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context), child: const Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnakbar(context),
      ),
    );
  }
}
