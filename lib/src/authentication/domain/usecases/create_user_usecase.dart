import 'package:clean_architecture_bloc/core/usecase/usecase.dart';
import 'package:clean_architecture_bloc/core/utils/type_def.dart';
import 'package:clean_architecture_bloc/src/authentication/domain/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';

class CreateUserUseCase extends UseCaseWithParams<void, CreateUserParams> {
  final AuthRepository authRepository;
  CreateUserUseCase({required this.authRepository});

  @override
  ResultFuture execute(CreateUserParams params) async {
    return authRepository.createUser(
      fullName: params.fullName,
      email: params.email,
      password: params.password,
    );
  }
}

class CreateUserParams extends Equatable {
  final String fullName;
  final String email;
  final String password;
  const CreateUserParams(
      {required this.fullName, required this.email, required this.password});


  @override
  // TODO: implement props
  List<Object?> get props => [fullName,email,password];
}
