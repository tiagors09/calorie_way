enum ActivityLevel {
  sedentary('Sedentário'),
  slightlyActive('Levemente ativo'),
  moderatelyActive('Moderamente ativo'),
  veryActive('Muito ativo');

  final String value;

  const ActivityLevel(this.value);

  @override
  String toString() => value;
}
