abstract class TMBCalculator {
  static double tmbCalcMac(double weight, int height, int age) {
    return 88.362 + (13.392 * weight) + (4.799 * height) - (5.677 * age);
  }

  static double tmbCalcFem(double weight, int height, int age) {
    return 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age);
  }
}
