import 'package:clean_architecture_bloc/src/authentication/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.createdAt,
    required super.fullName,
    required super.email,
    required super.password,
    required super.id,
  });

  UserModel copyWith({
    String? createdAt,
    String? fullName,
    String? email,
    String? password,
    String? id,
  }) {
    return UserModel(
      createdAt: createdAt ?? this.createdAt,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      password: password ?? this.password,
      id: id ?? this.id,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      createdAt: json["createdAt"] ?? "",
      fullName: json["full_name"] ?? "",
      email: json["email"] ?? "",
      password: json["password"] ?? "",
      id: json["id"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
    "createdAt": createdAt,
    "fullname": fullName,
    "email": email,
    "password": password,
    "id": id,
  };
}
