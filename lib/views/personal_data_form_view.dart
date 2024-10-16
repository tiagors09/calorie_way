import 'package:calorie_way/controllers/personal_data_form_controller.dart';
import 'package:calorie_way/viewmodel/personal_data_form_view_model.dart';
import 'package:flutter/material.dart';

class PersonalDataFormView extends StatelessWidget
    with PersonalDataFormViewModel, PersonalDataFormController {
  const PersonalDataFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        title: Text(
          'Insira seus dados',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Placeholder(),
    );
  }
}
