import 'package:calorie_way/models/personal_data_model.dart';
import 'package:calorie_way/widgets/calorie_consumption_info.dart';
import 'package:calorie_way/widgets/info_tile.dart';
import 'package:flutter/material.dart';

import '../enums/goals.dart';

class ShowData extends StatelessWidget {
  final PersonalDataModel personalData;

  const ShowData({
    super.key,
    required this.personalData,
  });

  @override
  Widget build(BuildContext context) {
    final itens = [
      {
        "visible": true,
        "icon": Icons.scale,
        "label": 'Peso',
        "value": '${personalData.weight} kg',
      },
      {
        "visible": true,
        "icon": Icons.straighten,
        "label": 'Altura',
        "value": '${personalData.height} cm',
      },
      {
        "visible": true,
        "icon": Icons.sports_gymnastics,
        "label": 'Nível de atividade',
        "value": personalData.activityLevel,
      },
      {
        "visible": true,
        "icon": Icons.cake,
        "label": 'Idade:',
        "value": '${personalData.age} anos',
      },
      {
        "visible": true,
        "icon": personalData.gender == "Masculino" ? Icons.male : Icons.female,
        "label": 'Gênero:',
        "value": personalData.gender,
      },
      {
        "visible": true,
        "icon": Icons.flag,
        "label": 'Objetivo:',
        "value": personalData.goals,
      },
    ];

    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        ...itens.map(
          (item) => InfoTile(
            icon: item["icon"] as IconData,
            label: item["label"] as String,
            value: item["value"] as String,
            visible: item["visible"] as bool,
          ),
        ),
        Visibility(
          visible: personalData.goals == Goals.weightGain.value,
          child: CalorieConsumptionInfo(
            calories: personalData.caloriesToGain.toStringAsFixed(2),
            goal: Goals.weightGain,
            goalValue: personalData.goals,
          ),
        ),
        Visibility(
          visible: personalData.goals == Goals.weightLoss.value,
          child: CalorieConsumptionInfo(
            calories: personalData.caloriesToLoss.toStringAsFixed(2),
            goal: Goals.weightLoss,
            goalValue: personalData.goals,
          ),
        ),
      ],
    );
  }
}
