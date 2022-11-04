import 'package:shared_preferences/shared_preferences.dart';

class TokenAuth {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  String? token;

  Future<String> getToken() async {
    final SharedPreferences prefs = await _prefs;
    try {
      token = prefs.getString('token');
    } catch (e) {
      throw ("Error while getting token");
    }
    return token!;
  }

  Future<void> setToken(String token) async {
    final SharedPreferences prefs = await _prefs;

    try {
      prefs.setString('token', token);
    } catch (e) {
      throw ("Error while setting token");
    }
  }

  Future<void> removeToken() async {
    final SharedPreferences prefs = await _prefs;

    try {
      prefs.remove('token');
    } catch (e) {
      throw ("Error while removing token");
    }
  }

  Future<bool> isTokenSet() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.containsKey('token');
  }
}
