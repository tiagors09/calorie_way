import 'dart:convert';

import 'package:calorie_way/models/personal_data_model.dart';
import 'package:calorie_way/widgets/show_data.dart';
import 'package:calorie_way/widgets/show_error.dart';
import 'package:flutter/material.dart';

import '../service/preferences.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  Widget builder(BuildContext ctx, AsyncSnapshot<String> snp) {
    if (snp.connectionState == ConnectionState.done) {
      if (snp.hasData && snp.data!.isNotEmpty) {
        final data = json.decode(snp.data!);
        return ShowData(
          personalData: PersonalDataModel.fromMap(data),
        );
      } else if (snp.hasError) {
        return ShowError(
          error: snp.error.toString(),
        );
      }
    }

    return const CircularProgressIndicator();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Preferences.readPersonalData(),
      builder: builder,
    );
  }
}
