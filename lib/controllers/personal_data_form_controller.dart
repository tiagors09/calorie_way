import 'package:calorie_way/utils/activity_level.dart';
import 'package:flutter/material.dart';

import '../utils/genders.dart';

mixin PersonalDataFormController {
  final String weightLabel = 'peso (em kg)';
  final String heightLabel = 'altura (em cm)';
  final String ageLabel = 'idade';
  final String genderLabel = 'gênero';
  final String activityLabel = 'nível de atividade';

  String? weightValidator(String? value) {
    return null;
  }

  String? heightValidator(String? value) {
    return null;
  }

  String? ageValidator(String? value) {
    return null;
  }

  String? genreValidator(Genders? value) {
    return null;
  }

  void genderOnChanged(Genders? value) {}

  void genderOnSaved(Genders? value) {}

  String? activityLevelValidator(ActivityLevel? value) {
    return null;
  }

  void activityLevelOnChanged(ActivityLevel? value) {}

  void activityLevelOnSaved(ActivityLevel? value) {}

  get genres => Genders.values
      .map(
        (genre) => DropdownMenuItem<Genders>(
          value: genre,
          child: Text(genre.value),
        ),
      )
      .toList();

  get activitiyLevels => ActivityLevel.values
      .map(
        (level) => DropdownMenuItem<ActivityLevel>(
          value: level,
          child: Text(level.value),
        ),
      )
      .toList();
}
