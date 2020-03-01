import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  static final UserPreference _instance = new UserPreference._internal();

  factory UserPreference() {
    return _instance;
  }

  UserPreference._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  get token {
    return _prefs.getString('token') ?? 'null';
  }

  set token(String value) {
    _prefs.setString('token', value);
  }

  get logged {
    return _prefs.getBool('logged') ?? false;
  }

  set logged(bool value) {
    _prefs.setBool('logged', value);
  }

  get login {
    return _prefs.getBool('login') ?? false;
  }

  set login(bool value) {
    _prefs.setBool('login', value);
  }

  get theme {
    return _prefs.getString('appTheme') ?? 'lightTheme';
  }

  set theme(String value) {
    _prefs.setString('appTheme', value);
  }
}
