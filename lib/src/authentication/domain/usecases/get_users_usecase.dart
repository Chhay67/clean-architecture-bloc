import 'package:clean_architecture_bloc/core/usecase/usecase.dart';
import 'package:clean_architecture_bloc/core/utils/type_def.dart';
import 'package:clean_architecture_bloc/src/authentication/domain/entity/user_entity.dart';
import 'package:clean_architecture_bloc/src/authentication/domain/repositories/auth_repository.dart';

class GetUsersUseCase extends UseCaseWithoutParams<List<UserEntity>> {
  final AuthRepository authRepository;
  GetUsersUseCase({required this.authRepository});

  @override
  ResultFuture<List<UserEntity>> execute() async{
    return authRepository.getUsers();
  }
}
