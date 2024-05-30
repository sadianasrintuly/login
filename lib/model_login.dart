import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String id;
  String name;
  String password;
  DateTime createdAt;

  LoginModel({
    required this.id,
    required this.name,
    required this.password,
    required this.createdAt,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
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