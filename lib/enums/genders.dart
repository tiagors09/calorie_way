enum Genders {
  masculine('Masculino'),
  feminine('Feminino');

  final String value;

  const Genders(this.value);

  @override
  String toString() => value;
}
