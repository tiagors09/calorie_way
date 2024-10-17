import 'package:calorie_way/views/personal_data_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'utils/routes.dart';
import 'views/history_view.dart';
import 'views/home_view.dart';
import 'utils/util.dart';
import 'utils/theme.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Roboto", "Poppins");

    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CalorieWay',
      theme: theme.light(),
      routes: {
        Routes.home: (ctx) => const HomeView(),
        Routes.history: (ctx) => const HistoryView(),
        Routes.personalDataForm: (ctx) => const PersonalDataFormView(),
      },
      initialRoute: Routes.home,
    );
  }
}
