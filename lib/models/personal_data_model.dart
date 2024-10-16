class PersonalDataModel {
  final int age;
  final int height;
  final double weight;
  final String activityLevel;
  final String goals;
  final double caloriesToLoss;
  final double caloriesToGain;

  PersonalDataModel({
    required this.age,
    required this.height,
    required this.weight,
    required this.activityLevel,
    required this.goals,
    required this.caloriesToLoss,
    required this.caloriesToGain,
  });

  PersonalDataModel.fromMap(Map<String, dynamic> data)
      : age = data["age"],
        height = data["height"],
        weight = data["weight"],
        activityLevel = data["activityLevel"],
        goals = data["goals"],
        caloriesToLoss = data["caloriesToLoss"],
        caloriesToGain = data["caloriesToGain"];

  Map<String, Object> toMap() {
    return {
      "age": age,
      "height": height,
      "weight": weight,
      "activityLevel": activityLevel,
      "goals": goals,
      "caloriesToLoss": caloriesToLoss,
      "caloriesToGain": caloriesToGain,
    };
  }
}
