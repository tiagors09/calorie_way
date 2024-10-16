import 'dart:convert';

import 'package:calorie_way/enums/activity_level.dart';
import 'package:calorie_way/service/preferences.dart';
import 'package:calorie_way/utils/calories_calculator.dart';
import 'package:calorie_way/utils/tmb_calculator.dart';
import 'package:flutter/material.dart';

import '../enums/genders.dart';
import '../enums/goals.dart';
import '../utils/routes.dart';

mixin PersonalDataFormController {
  final formKey = GlobalKey<FormState>();
  final String weightLabel = 'peso (em kg)';
  final String heightLabel = 'altura (em cm)';
  final String ageLabel = 'idade';
  final String genderLabel = 'gênero';
  final String activityLabel = 'nível de atividade';
  final String goalsLabel = 'objetivo';

  String? weightValidator(String? value) {
    if (value!.trim().isEmpty) {
      return 'Este campo não pode estar vazio';
    }

    value = value.trim();

    final validNumber = RegExp(r'^\d+(\.\d+)?$');
    if (!validNumber.hasMatch(value)) {
      return 'Digite apenas números inteiros ou com casas decimais';
    }

    final weight = double.tryParse(value);

    if (weight == null) return 'Digite um valor válido';

    if (weight < 2 || weight > 200) {
      return 'Digite um peso entre 2 e 200 kg';
    }

    return null;
  }

  void weightOnSave(String? value, Map<String, dynamic> formData) =>
      formData["weight"] = double.parse(value!);

  String? heightValidator(String? value) {
    if (value!.trim().isEmpty) {
      return 'Este campo não pode estar vazio';
    }

    value = value.trim();

    final validNumber = RegExp(r'^\d+$');
    if (!validNumber.hasMatch(value)) {
      return 'Digite apenas números inteiros';
    }

    final height = int.tryParse(value);

    if (height == null) return 'Digite um valor válido';

    if (height < 30 || height > 300) {
      return 'Digite uma altura entre 30 cm e 300 cm';
    }

    return null;
  }

  void heightOnSaved(
    String? value,
    Map<String, dynamic> formData,
  ) =>
      formData["height"] = int.parse(value!);

  String? ageValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Este campo não pode estar vazio';
    }

    value = value.trim();

    final validNumber = RegExp(r'^\d+$');
    if (!validNumber.hasMatch(value)) {
      return 'Digite apenas números inteiros';
    }

    final age = int.parse(value);
    if (age < 0 || age > 150) {
      return 'Digite uma idade entre 0 e 150 anos';
    }

    return null;
  }

  void ageOnSaved(
    String? value,
    Map<String, dynamic> formData,
  ) =>
      formData["age"] = int.parse(value!);

  String? genreValidator(Genders? value) {
    if (value != Genders.masculine && value != Genders.feminine) {
      return 'Selecione um gênero válido';
    }
    return null;
  }

  String? goalValidator(Goals? value) {
    if (!Goals.values.contains(value!)) {
      return 'Selecione um objetivo válido';
    }

    return null;
  }

  void goalOnChanged(
    Goals? value,
    Map<String, dynamic> formData,
  ) =>
      formData["goals"] = value!;

  void goalOnSaved(
    Goals? value,
    Map<String, dynamic> formData,
  ) =>
      formData["goals"] = value!;

  void genderOnChanged(
    Genders? value,
    Map<String, dynamic> formData,
  ) =>
      formData["gender"] = value!;

  void genderOnSaved(
    Genders? value,
    Map<String, dynamic> formData,
  ) =>
      formData["gender"] = value!;

  String? activityLevelValidator(ActivityLevel? value) {
    if (!ActivityLevel.values.contains(value!)) {
      return 'Selecione um nível atividade válido';
    }

    return null;
  }

  void activityLevelOnChanged(
    ActivityLevel? value,
    Map<String, dynamic> formData,
  ) =>
      formData["activityLevel"] = value!;

  void activityLevelOnSaved(
    ActivityLevel? value,
    Map<String, dynamic> formData,
  ) =>
      formData["activityLevel"] = value!;

  void onSubmit(BuildContext context, Map<String, dynamic> formData) {
    if (!formKey.currentState!.validate()) return;

    formKey.currentState!.save();

    dynamic Function(double, int, int) tmbCalc =
        formData["gender"] == Genders.masculine
            ? TMBCalculator.tmbCalcMac
            : TMBCalculator.tmbCalcFem;

    double tmb = tmbCalc(
      formData["weight"] as double,
      formData["height"] as int,
      formData["age"] as int,
    );

    final dailyCalories = CaloriesCalculator.dailyCalories(
      tmb,
      (formData["activityLevel"] as ActivityLevel).rate,
    );

    final caloriesToLoss = CaloriesCalculator.caloriesToLoss(dailyCalories);
    final caloriesToGain = CaloriesCalculator.caloriesToGain(dailyCalories);

    formData["caloriesToLoss"] = caloriesToLoss;
    formData["caloriesToGain"] = caloriesToGain;

    formData["activityLevel"] =
        (formData["activityLevel"] as ActivityLevel).value;
    formData["gender"] = (formData["gender"] as Genders).value;
    formData["goals"] = (formData["goals"] as Goals).value;

    final jsonString = jsonEncode(formData);

    Preferences.savePersonalData(jsonString).then(
      (value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(value),
          ),
        );
      },
    );

    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.home,
      (route) => false,
    );
  }

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

  get goals => Goals.values
      .map(
        (goal) => DropdownMenuItem<Goals>(
          value: goal,
          child: Text(goal.value),
        ),
      )
      .toList();
}
