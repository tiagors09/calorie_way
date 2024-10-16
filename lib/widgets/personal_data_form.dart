import 'package:calorie_way/utils/activity_level.dart';
import 'package:calorie_way/utils/genders.dart';
import 'package:calorie_way/widgets/calorie_way_dropdown_menu.dart';
import 'package:flutter/material.dart';
import 'package:calorie_way/controllers/personal_data_form_controller.dart';
import 'package:calorie_way/viewmodel/personal_data_form_view_model.dart';

class PersonalDataForm extends StatelessWidget
    with PersonalDataFormViewModel, PersonalDataFormController {
  PersonalDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(24),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('cadastrar'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: TextFormField(
              validator: (value) => weightValidator(value),
              decoration: InputDecoration(
                label: Text(weightLabel),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: TextFormField(
              validator: (value) => heightValidator(value),
              decoration: InputDecoration(
                label: Text(heightLabel),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: TextFormField(
              validator: (value) => ageValidator(value),
              decoration: InputDecoration(
                label: Text(ageLabel),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: CalorieWayDropdownMenu<Genders>(
              title: genderLabel,
              items: genres,
              validator: genreValidator,
              onSaved: genderOnSaved,
              initalValue: Genders.masculine,
              onChanged: genderOnChanged,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: CalorieWayDropdownMenu<ActivityLevel>(
              title: activityLabel,
              items: activitiyLevels,
              validator: activityLevelValidator,
              onSaved: activityLevelOnSaved,
              initalValue: ActivityLevel.sedentary,
              onChanged: activityLevelOnChanged,
            ),
          ),
        ],
      ),
    );
  }
}
