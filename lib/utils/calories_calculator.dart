abstract class CaloriesCalculator {
  static double dailyCalories(double tmb, double activityLevelRate) {
    return tmb * activityLevelRate;
  }

  static double caloriesToLoss(double dailyCalories) {
    return dailyCalories - (dailyCalories * 2 / 10);
  }

  static double caloriesToGain(double dailyCalories) {
    return dailyCalories + (dailyCalories * 15 / 100);
  }
}
