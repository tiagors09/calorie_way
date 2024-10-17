import 'dart:convert';
import 'package:calorie_way/service/preferences.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;

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
              return ListView(
                padding: const EdgeInsets.all(24),
                children: [
                  _buildInfoTile('Data da última checagem:', history["date"]),
                  _buildInfoTile('Peso:', '${history["weight"]} kg'),
                  _buildInfoTile('Altura:', '${history["height"]} cm'),
                  _buildInfoTile('Idade:', '${history["age"]} anos'),
                  _buildInfoTile('Gênero:', history["gender"]),
                  _buildInfoTile('Objetivo:', history["goals"]),
                  Visibility(
                    visible: history["goals"] == Goals.weightLoss.value,
                    child: _buildInfoTile(
                      'Calorias a perder:',
                      (history["caloriesToLoss"] as double).toStringAsFixed(2),
                    ),
                  ),
                  Visibility(
                    visible: history["goals"] == Goals.weightGain.value,
                    child: _buildInfoTile(
                      'Calorias a ganhar:',
                      (history["caloriesToGain"] as double).toStringAsFixed(2),
                    ),
                  ),
                ],
              );
            } else {
              return Center(
                child: Text(
                  'Nenhum dado encontrado.',
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

          if (snp.hasError) {
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

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget _buildInfoTile(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 16),
          ),
          Text(
            value,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
