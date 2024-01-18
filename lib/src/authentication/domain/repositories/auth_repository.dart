import 'package:clean_architecture_bloc/core/utils/type_def.dart';
import 'package:clean_architecture_bloc/src/authentication/domain/entity/user_entity.dart';

abstract class AuthRepository {
  const AuthRepository();

  ResultVoid createUser({
    required String fullName,
    required String email,
    required String password,
  });

  ResultFuture<List<UserEntity>> getUsers();
}
