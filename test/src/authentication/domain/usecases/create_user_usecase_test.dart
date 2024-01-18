import 'package:clean_architecture_bloc/core/error/failure.dart';
import 'package:clean_architecture_bloc/src/authentication/domain/repositories/auth_repository.dart';
import 'auth_repository.mock.dart';
import 'package:clean_architecture_bloc/src/authentication/domain/usecases/create_user_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late CreateUserUseCase createUserUseCase;

  late AuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    createUserUseCase = CreateUserUseCase(authRepository: mockAuthRepository);
  });
  group('execute create user', () {
    const createUserParams = CreateUserParams(
      fullName: 'fullName',
      email: 'email',
      password: 'password',
    );
    const apiFailure = ApiFailure(message: 'API ERROR', statusCode: 500);
    test('should execute create user [AuthRepository.createUser] ', () async {
      //arrange
      when(() => mockAuthRepository.createUser(
            fullName: createUserParams.fullName,
            email: createUserParams.email,
            password: createUserParams.password,
          )).thenAnswer((_) async => const Right(null));
      //act
      final result = await createUserUseCase.execute(createUserParams);

      //assert
      expect(result, equals(const Right(null)));
      verify(
        () => mockAuthRepository.createUser(
            fullName: createUserParams.fullName,
            email: createUserParams.email,
            password: createUserParams.password),
      ).called(1);
      verifyNoMoreInteractions(mockAuthRepository);
    });

    test(
        'should execute create user [AuthRepository.createUser] and return Failure',
        () async {
      //arrange
      when(() => mockAuthRepository.createUser(
            fullName: createUserParams.fullName,
            email: createUserParams.email,
            password: createUserParams.password,
          )).thenAnswer((_) async => left(apiFailure));
      //act
      final result = await createUserUseCase.execute(createUserParams);

      //assert
      expect(result, equals(left(apiFailure)));
      verify(
        () => mockAuthRepository.createUser(
            fullName: createUserParams.fullName,
            email: createUserParams.email,
            password: createUserParams.password),
      ).called(1);
      verifyNoMoreInteractions(mockAuthRepository);
    });
  });
}
