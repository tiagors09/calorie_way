import 'package:flutter/material.dart';

class ShowError extends StatelessWidget {
  final String error;

  const ShowError({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error.replaceFirst('Exception:', ''),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32,
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
