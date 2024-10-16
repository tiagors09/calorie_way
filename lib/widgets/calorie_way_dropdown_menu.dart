import 'package:flutter/material.dart';

class CalorieWayDropdownMenu<T> extends StatelessWidget {
  final String title;
  final List<DropdownMenuItem<T>> items;
  final String? Function(T?) validator;
  final void Function(T?)? onSaved;
  final T? initalValue;
  final void Function(T?)? onChanged;
  final IconData prefixIcon;

  const CalorieWayDropdownMenu({
    super.key,
    required this.title,
    required this.items,
    required this.validator,
    required this.onSaved,
    required this.initalValue,
    required this.onChanged,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        label: Text(
          title,
        ),
      ),
      items: items,
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      value: initalValue,
    );
  }
}
