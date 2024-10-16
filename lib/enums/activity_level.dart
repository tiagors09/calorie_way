enum ActivityLevel {
  sedentary('Sedentário', 1.2),
  slightlyActive('Levemente ativo', 1.375),
  moderatelyActive('Moderamente ativo', 1.55),
  veryActive('Muito ativo', 1.725);

  final String value;
  final double rate;

  const ActivityLevel(this.value, this.rate);

  @override
  String toString() => value;
}
