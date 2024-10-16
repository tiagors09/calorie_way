import 'package:calorie_way/enums/activity_level.dart';
import 'package:flutter/material.dart';

import '../enums/genders.dart';
import '../utils/routes.dart';

mixin PersonalDataFormController {
  final formKey = GlobalKey<FormState>();
  final String weightLabel = 'peso (em kg)';
  final String heightLabel = 'altura (em cm)';
  final String ageLabel = 'idade';
  final String genderLabel = 'gênero';
  final String activityLabel = 'nível de atividade';

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

  void weightOnSave(String? value, double weight) =>
      weight = double.parse(value!);

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

  void heightOnSaved(String? value, int height) => height = int.parse(value!);

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

  void ageOnSaved(String? value, int age) => age = int.parse(value!);

  String? genreValidator(Genders? value) {
    if (value != Genders.masculine && value != Genders.feminine) {
      return 'Selecione um gênero válido';
    }
    return null;
  }

  void genderOnChanged(Genders? value, Genders gender) => gender = value!;

  void genderOnSaved(Genders? value, Genders gender) => gender = value!;

  String? activityLevelValidator(ActivityLevel? value) {
    if (!ActivityLevel.values.contains(value!)) {
      return 'Selecione um nível atividade válido';
    }

    return null;
  }

  void activityLevelOnChanged(
    ActivityLevel? value,
    ActivityLevel activityLevel,
  ) =>
      activityLevel = value!;

  void activityLevelOnSaved(
    ActivityLevel? value,
    ActivityLevel activityLevel,
  ) =>
      activityLevel = value!;

  void onSubmit(BuildContext context) {
    if (!formKey.currentState!.validate()) return;

    formKey.currentState!.save();

    // salvar no shared_preferences

    Navigator.of(context).pushReplacementNamed(
      Routes.home,
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
}
