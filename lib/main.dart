import 'package:calorie_way/views/history.dart';
import 'package:calorie_way/views/personal_data_form.dart';
import 'package:flutter/material.dart';
import 'utils/routes.dart';
import 'views/home.dart';
import 'utils/util.dart';
import 'utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Roboto", "Poppins");

    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CalorieWay',
      theme: theme.light(),
      home: const Home(),
      routes: {
        Routes.home: (ctx) => const Home(),
        Routes.history: (ctx) => const History(),
        Routes.personalDataForm: (ctx) => const PersonalDataForm(),
      },
    );
  }
}
