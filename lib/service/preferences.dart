import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences sp;

  static Future<String> savePersonalData(String data) async {
    try {
      sp = await SharedPreferences.getInstance();

      final response = await sp.setString('personal_data', data);

      if (response) {
        return 'Dados salvos com sucesso';
      } else {
        return 'Ocorreu um probleminha ao salvar seu dados';
      }
    } catch (e) {
      rethrow;
    }
  }

  readPersonalData() async {}
}
