// To parse this JSON data, do
//
//     final viewpostmodel = viewpostmodelFromJson(jsonString);

import 'dart:convert';

List<Viewpostmodel> viewpostmodelFromJson(String str) =>
    List<Viewpostmodel>.from(
        json.decode(str).map((x) => Viewpostmodel.fromJson(x)));

String viewpostmodelToJson(List<Viewpostmodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Viewpostmodel {
  int id;
  String title;
  String content;
  String userEmail;
  DateTime createdAt;
  DateTime updatedAt;
  User user;

  Viewpostmodel({
    required this.id,
    required this.title,
    required this.content,
    required this.userEmail,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });

  factory Viewpostmodel.fromJson(Map<String, dynamic> json) => Viewpostmodel(
        id: json["id"],
        title: json["title"],
        content: json["content"],
        userEmail: json["user_email"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "user_email": userEmail,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user": user.toJson(),
      };
}

class User {
  int id;
  String fullName;
  String email;
  String hashedPassword;
  bool isActive;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.fullName,
    required this.email,
    required this.hashedPassword,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        fullName: json["full_name"],
        email: json["email"],
        hashedPassword: json["hashed_password"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "email": email,
        "hashed_password": hashedPassword,
        "is_active": isActive,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
