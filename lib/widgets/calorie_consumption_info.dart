import 'package:calorie_way/enums/goals.dart';
import 'package:flutter/material.dart';

class CalorieConsumptionInfo extends StatelessWidget {
  final Goals goal;
  final String goalValue;
  final String calories;

  const CalorieConsumptionInfo({
    super.key,
    required this.goal,
    required this.goalValue,
    required this.calories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(8),
      color: Theme.of(context).colorScheme.outlineVariant,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${goal == Goals.weightGain ? 'Aumente' : 'Diminuma'} o consumo de calorias',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '''
              Para atingir seu objetivo de ${goalValue.toLowerCase()} você precisa ${goal == Goals.weightGain ? 'consumir' : 'queimar'} $calories kcal. Lembre-se de manter uma
              boa frequência de atividades físicas e alimentação adequada.
            ''',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
