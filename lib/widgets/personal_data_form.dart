// ignore_for_file: must_be_immutable

import 'package:calorie_way/enums/activity_level.dart';
import 'package:calorie_way/enums/genders.dart';
import 'package:calorie_way/enums/goals.dart';
import 'package:calorie_way/widgets/calorie_way_dropdown_menu.dart';
import 'package:flutter/material.dart';
import 'package:calorie_way/controllers/personal_data_form_controller.dart';

class PersonalDataForm extends StatelessWidget with PersonalDataFormController {
  final formData = <String, dynamic>{};

  PersonalDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    final textInputs = [
      {
        "prefixIcon": Icons.scale,
        "keyboardType": const TextInputType.numberWithOptions(
          decimal: true,
        ),
        "onSaved": (value) => weightOnSave(value, formData),
        "validator": weightValidator,
        "label": weightLabel,
      },
      {
        "prefixIcon": Icons.straighten,
        "keyboardType": const TextInputType.numberWithOptions(decimal: true),
        "validator": heightValidator,
        "onSaved": (value) => heightOnSaved(value, formData),
        "label": heightLabel,
      },
      {
        "prefixIcon": Icons.cake,
        "keyboardType": TextInputType.number,
        "validator": ageValidator,
        "onSaved": (value) => ageOnSaved(value, formData),
        "label": ageLabel,
      },
    ];

    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(24),
        child: ElevatedButton(
          onPressed: () => onSubmit(context, formData),
          child: const Text('cadastrar'),
        ),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            ...textInputs.map(
              (input) => Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: TextFormField(
                  keyboardType: input["keyboardType"] as TextInputType,
                  onSaved: input["onSaved"] as void Function(String?)?,
                  validator: input["validator"] as String? Function(String?)?,
                  decoration: InputDecoration(
                    prefixIcon: Icon(input["prefixIcon"] as IconData),
                    label: Text(input["label"] as String),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: CalorieWayDropdownMenu<Genders>(
                prefixIcon: Icons.wc,
                title: genderLabel,
                items: genres,
                validator: genreValidator,
                onSaved: (value) => genderOnChanged(value, formData),
                initalValue: Genders.masculine,
                onChanged: (value) => genderOnChanged(value, formData),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: CalorieWayDropdownMenu<ActivityLevel>(
                prefixIcon: Icons.sports_gymnastics,
                title: activityLabel,
                items: activitiyLevels,
                validator: activityLevelValidator,
                onSaved: (value) => activityLevelOnSaved(value, formData),
                initalValue: ActivityLevel.sedentary,
                onChanged: (value) => activityLevelOnChanged(
                  value,
                  formData,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: CalorieWayDropdownMenu<Goals>(
                prefixIcon: Icons.flag,
                title: goalsLabel,
                items: goals,
                validator: goalValidator,
                onSaved: (value) => goalOnSaved(value, formData),
                initalValue: Goals.weightGain,
                onChanged: (value) => goalOnChanged(value, formData),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
