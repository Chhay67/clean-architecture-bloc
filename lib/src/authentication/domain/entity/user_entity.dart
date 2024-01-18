import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  const UserEntity({
    required this.createdAt,
    required this.fullName,
    required this.email,
    required this.password,
    required this.id,
  });

  final String createdAt;
  final String fullName;
  final String email;
  final String password;
  final String id;

  @override
  // TODO: implement props
  List<Object?> get props => [id,email,password,fullName,createdAt];



}
