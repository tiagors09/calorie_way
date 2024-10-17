import 'dart:convert';
import 'package:calorie_way/service/preferences.dart';
import 'package:calorie_way/widgets/info_tile.dart';
import 'package:calorie_way/widgets/show_error.dart';
import 'package:flutter/material.dart';

import '../enums/goals.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).colorScheme.onPrimary),
        actions: [
          IconButton(
            onPressed: () {
              Preferences.cleanHistory().then((_) => setState(() {}));
            },
            icon: Icon(Icons.delete,
                color: Theme.of(context).colorScheme.onPrimary),
          ),
        ],
        title: Text(
          'Histórico',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: FutureBuilder(
        future: Preferences.getHistory(),
        builder: (ctx, snp) {
          if (snp.connectionState == ConnectionState.done) {
            if (snp.hasData) {
              final history = jsonDecode(snp.data!);

              final itens = [
                {
                  "visible": true,
                  "icon": Icons.calendar_month,
                  "label": 'Data da última checagem',
                  "value": history["date"],
                },
                {
                  "visible": true,
                  "icon": Icons.scale,
                  "label": 'Peso',
                  "value": '${history["weight"]} kg',
                },
                {
                  "visible": true,
                  "icon": Icons.straighten,
                  "label": 'Altura',
                  "value": '${history["height"]} cm',
                },
                {
                  "visible": true,
                  "icon": Icons.cake,
                  "label": 'Idade:',
                  "value": '${history["age"]} anos',
                },
                {
                  "visible": true,
                  "icon": Icons.wc,
                  "label": 'Gênero:',
                  "value": history["gender"],
                },
                {
                  "visible": true,
                  "icon": Icons.sports_gymnastics,
                  "label": 'Objetivo:',
                  "value": history["goals"],
                },
                {
                  "visible": history["goals"] == Goals.weightLoss.value,
                  "icon": Icons.local_fire_department,
                  "label": 'Calorias a perder:',
                  "value":
                      (history["caloriesToLoss"] as double).toStringAsFixed(2),
                },
                {
                  "visible": history["goals"] == Goals.weightGain.value,
                  "icon": Icons.local_fire_department,
                  "label": 'Calorias a ganhar:',
                  "value":
                      (history["caloriesToGain"] as double).toStringAsFixed(2),
                },
              ];

              return ListView(
                padding: const EdgeInsets.all(24),
                children: itens
                    .map(
                      (item) => InfoTile(
                        icon: item["icon"],
                        label: item['label'],
                        value: item["value"],
                        visible: item["visible"],
                      ),
                    )
                    .toList(),
              );
            } else {
              return Center(
                child: Text(
                  'Nenhum dado encontrado.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }
          }

          if (snp.hasError) {
            return ShowError(
              error: snp.error.toString(),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
