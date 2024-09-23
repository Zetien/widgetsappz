import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsViews(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsViews extends StatelessWidget {
  const _ButtonsViews();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new),
                label: const Text('Filled Icon')),
            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('Outline Icon'),
              icon: const Icon(Icons.terminal_outlined),
            ),
            TextButton(onPressed: () {}, child: const Text('Text button')),
            TextButton.icon(
                onPressed: () {},
                label: const Text('Text Icon'),
                icon: const Icon(Icons.account_box_outlined)),
            //TODO CUSTOM Button
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_rounded),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(colors.primary),
                    iconColor: const WidgetStatePropertyAll(Colors.white))),
            const CustomButtom(),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_rounded),
                style: ButtonStyle(
                    iconColor: WidgetStatePropertyAll(colors.primary))),
          ],
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola Mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
