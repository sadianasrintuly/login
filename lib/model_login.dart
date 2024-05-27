
import 'dart:convert';

LoginScreen loginScreenFromJson(String str) => LoginScreen.fromJson(json.decode(str));

String loginScreenToJson(LoginScreen data) => json.encode(data.toJson());

class LoginScreen {
  String id;
  String name;
  String password;
  DateTime createdAt;

  LoginScreen({
    required this.id,
    required this.name,
    required this.password,
    required this.createdAt,
  });

  factory LoginScreen.fromJson(Map<String, dynamic> json) => LoginScreen(
    id: json["id"],
    name: json["name"],
    password: json["password"],
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "password": password,
    "created_at": createdAt.toIso8601String(),
  };
}
