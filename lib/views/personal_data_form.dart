import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insira seus dados'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Placeholder(),
    );
  }
}
