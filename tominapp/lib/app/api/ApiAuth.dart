import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:tominapp/app/user_preference.dart';

class ApiAuth {
  final String _url =
      'http://tomin-env-2.eba-dymffph5.us-west-2.elasticbeanstalk.com/api/v1';

  Future<bool> login(String phone, String password) async {
    final prefs = new UserPreference();
    final url = '$_url/users/login';
    final resp =
        await http.post(url, body: {'cellphone': phone, 'password': password});
    final decodedData = json.decode(resp.body);
    prefs.token = decodedData['token'];
    prefs.login = true;
    return true;
  }

  Future<bool> logout() async {
    final prefs = new UserPreference();
    prefs.token = '';
    prefs.login = false;
    return true;
  }
}
