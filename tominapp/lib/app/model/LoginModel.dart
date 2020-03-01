import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));
String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {

  String cellphone;
  String password;

  LoginModel({
    this.cellphone = '',
    this.password = '',
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => new LoginModel(
    cellphone    : json["cellphone"],
    password     : json["password"],
  );

  Map<String, dynamic> toJson() => {
    "cellphone"     : cellphone,
    "password"      : password,
  };
}
