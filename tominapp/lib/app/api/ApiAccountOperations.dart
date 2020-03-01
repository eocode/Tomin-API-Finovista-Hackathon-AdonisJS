import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tominapp/app/user_preference.dart';

class ApiAuth {
  final String _url =
      'http://tomin-env-2.eba-dymffph5.us-west-2.elasticbeanstalk.com/api/v1';

  Future<bool> login(String phone, String password) async {
    final prefs = new UserPreference();
    final url = '$_url/users/account/status';
    final resp = await http
        .post(url, headers: {'Authorization': 'Bearer ' + prefs.token});
    final decodedData = json.decode(resp.body);
    print(decodedData);
    return true;
  }

  Future<bool> logout() async {
    final prefs = new UserPreference();
    prefs.token = '';
    prefs.login = false;
    return true;
  }
}
