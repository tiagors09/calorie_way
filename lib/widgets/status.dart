import 'dart:convert';

import 'package:calorie_way/models/personal_data_model.dart';
import 'package:calorie_way/widgets/show_data.dart';
import 'package:flutter/material.dart';

import '../service/preferences.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return FutureBuilder(
      future: Preferences.readPersonalData(),
      builder: (ctx, snp) {
        if (snp.connectionState == ConnectionState.done) {
          if (snp.hasData && snp.data!.isNotEmpty) {
            final data = json.decode(snp.data!);
            return ShowData(
              personalData: PersonalDataModel.fromMap(data),
            );
          } else if (snp.hasError) {
            return Center(
              child: Text(
                snp.error.toString().replaceFirst('Exception:', ''),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenWidth * .06,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
