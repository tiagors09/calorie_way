enum Goals {
  weightLoss('erda de Peso'),
  weightGain('Ganho de Peso');

  final String value;

  const Goals(this.value);

  @override
  String toString() => value;
}
