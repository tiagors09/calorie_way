import 'package:calorie_way/widgets/personal_data_form.dart';
import 'package:flutter/material.dart';

class PersonalDataFormView extends StatelessWidget {
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
      body: PersonalDataForm(),
    );
  }
}
