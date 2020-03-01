import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {

  String email;
  String password;

  UserModel({
    this.email,
    this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => new UserModel(
    email        : json["email"],
    password     : json["password"],
  );

  Map<String, dynamic> toJson() => {
    "email"         : email,
    "password"      : password,
  };
}
