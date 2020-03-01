
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../../challenge0/models/user.dart';

class ApiAuth {

  final String _url = 'http://tomin-env-2.eba-dymffph5.us-west-2.elasticbeanstalk.com/api/v1';

  Future<bool> Auth( User user ) async {
    final url = '$_url/users/login';
    final resp = await http.post( url, body: productoModelToJson(user) );
    final decodedData = json.decode(resp.body);
    print( decodedData );
    return true;
  }

}

