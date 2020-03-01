
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tomin/app/model/UserModel.dart';

class ApiAuth {

  final String _url = 'http://tomin-env-2.eba-dymffph5.us-west-2.elasticbeanstalk.com/api/v1';

  Future<bool> auth( UserModel user ) async {
    final url = '$_url/users/login';
    final resp = await http.post( url, body: userModelToJson(user) );
    final decodedData = json.decode(resp.body);
    print( decodedData );
    return true;
  }

  Future<bool> logout( ) async {
    print( "logout" );
    return true;
  }

}

