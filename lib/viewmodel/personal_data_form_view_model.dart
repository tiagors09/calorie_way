import 'package:calorie_way/enums/activity_level.dart';
import 'package:calorie_way/enums/genders.dart';
import 'package:calorie_way/enums/goals.dart';

mixin PersonalDataFormViewModel {
  late double weight;
  late int height;
  late int age;
  late Genders gender;
  late ActivityLevel activityLevel;
  late Goals goals;
}
