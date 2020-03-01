import 'dart:convert';

class Users {
  List<User> items = new List();
  Users user(String str) => ProductoModel.fromJson(json.decode(str));
  String userModelToJson(ProductoModel data) => json.encode(data.toJson());
  Users();

  Users.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;
    for (var item in jsonList) {
      final product = new User.fromJsonMap(item);
      items.add(product);
    }
  }
}

class User {
  String email;
  String password;

  User() {
    this.email = '';
    this.password = '';
  }

  User.fromJsonMap(Map<String, dynamic> json) {
    email = json["email"];
    password = json["password"];
  }
}
