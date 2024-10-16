enum Goals {
  weightLoss('Perda de Peso'),
  weightGain('Ganho de Peso');

  final String value;

  const Goals(this.value);

  @override
  String toString() => value;
}
