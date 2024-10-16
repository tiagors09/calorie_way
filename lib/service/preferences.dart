import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class Preferences {
  static late SharedPreferences sp;

  static Future<String> savePersonalData(String data) async {
    try {
      sp = await SharedPreferences.getInstance();

      final history = jsonDecode(data);
      history["date"] = DateFormat('dd/MM/yyyy').format(DateTime.now());

      final response = await Future.wait([
        sp.setString('personal_data', data),
        sp.setString('history', jsonEncode(history)),
      ]);

      if (response[0] && response[1]) {
        return 'Dados salvos com sucesso';
      } else {
        return 'Ocorreu um probleminha ao salvar seu dados';
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<String> readPersonalData() async {
    try {
      sp = await SharedPreferences.getInstance();

      final response = sp.getString('personal_data');

      if (response != null) {
        return response;
      } else {
        throw Exception('Não há nada a ser exibido');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<String> getHistory() async {
    try {
      sp = await SharedPreferences.getInstance();

      final response = sp.getString('history');

      if (response != null) {
        return response;
      } else {
        throw Exception('Não há nada a ser exibido');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<Null> cleanHistory() async {
    try {
      sp = await SharedPreferences.getInstance();

      sp.remove('history');
    } catch (e) {
      rethrow;
    }
  }
}
