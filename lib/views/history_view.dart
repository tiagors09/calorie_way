import 'dart:convert';

import 'package:calorie_way/service/preferences.dart';
import 'package:flutter/material.dart';

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
        leading: BackButton(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Preferences.cleanHistory().then((_) => setState(() {}));
            },
            icon: Icon(
              Icons.delete,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
        title: Text(
          'Histórico',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: FutureBuilder(
        future: Preferences.getHistory(),
        builder: (ctx, snp) {
          if (snp.connectionState == ConnectionState.done && snp.hasData) {
            final history = jsonDecode(snp.data!);
            return ListView(
              padding: const EdgeInsets.all(24),
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Data da última checagem: ${history["date"]}',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: screenWidth * .03,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Peso ${history["weight"].toString()} kg',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: screenWidth * .03,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Altura ${history["height"].toString()} cm',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: screenWidth * .03,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    '${history["age"].toString()} anos de idade',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: screenWidth * .03,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    history["gender"],
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: screenWidth * .03,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Objetivo foi ${history["goals"]}',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: screenWidth * .03,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Calorias a perder ${history["caloriesToLoss"].toString()}',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: screenWidth * .03,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Calorias a ganhar ${history["caloriesToGain"].toString()}',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: screenWidth * .03,
                    ),
                  ),
                ),
              ],
            );
          }

          if (snp.connectionState == ConnectionState.done && snp.hasError) {
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

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
