import 'package:calorie_way/models/personal_data_model.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          child: Text(
            'Pra hoje',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth * .09,
              color: Theme.of(context).colorScheme.primaryContainer,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          child: Text(
            'Seu objetivo é ${personalData.goals}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth * .085,
              color: Theme.of(context).colorScheme.primaryContainer,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: personalData.goals == Goals.weightLoss.value,
              child: Container(
                margin: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      'Calorias a perder',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth * .08,
                        color: Theme.of(context).colorScheme.primaryContainer,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${personalData.caloriesToLoss.toStringAsFixed(2)} kcal',
                      style: TextStyle(
                        fontSize: screenWidth * .07,
                        color: Theme.of(context).colorScheme.primaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: personalData.goals == Goals.weightGain.value,
              child: Container(
                margin: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      'Calorias a ganhar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth * .08,
                        color: Theme.of(context).colorScheme.primaryContainer,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${personalData.caloriesToGain.toStringAsFixed(2)} kcal',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth * .07,
                        color: Theme.of(context).colorScheme.primaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
