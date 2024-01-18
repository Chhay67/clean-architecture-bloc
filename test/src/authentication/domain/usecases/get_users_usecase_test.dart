import 'package:clean_architecture_bloc/core/error/failure.dart';
import 'package:clean_architecture_bloc/src/authentication/domain/entity/user_entity.dart';
import 'package:clean_architecture_bloc/src/authentication/domain/repositories/auth_repository.dart';
import 'package:clean_architecture_bloc/src/authentication/domain/usecases/get_users_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'auth_repository.mock.dart';

void main() {
  late AuthRepository mockAuthRepository;

  late GetUsersUseCase getUsersUseCase;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    getUsersUseCase = GetUsersUseCase(authRepository: mockAuthRepository);
  });



  group('execute get users', () {
    final userEntityList = [
      const UserEntity(
          createdAt: "createdAt",
          fullName: "fullName",
          email: "email",
          password: "password",
          id: "id")
    ];
    const apiFailure = ApiFailure(message: 'API ERROR',statusCode: 500);

    test('should execute get users [AuthRepository.getUsers] and return List<UserEntity>',
        () async {
      //arrange
      when(
        () => mockAuthRepository.getUsers(),
      ).thenAnswer((_) async => Right(userEntityList));
      //act
      final result = await getUsersUseCase.execute();
      //assert
      expect(result, equals(Right(userEntityList)));

      verify(() => mockAuthRepository.getUsers()).called(1);
      verifyNoMoreInteractions(mockAuthRepository);
    });
    test('should execute get users [AuthRepository.getUsers] and return Failure', () async{
      //arrange
      when(() => mockAuthRepository.getUsers(),
      ).thenAnswer((_) async => left(apiFailure));
      //act
      final result = await getUsersUseCase.execute();
      //assert
      expect(result, equals(left(apiFailure)));
      verify(() => mockAuthRepository.getUsers()).called(1);
      verifyNoMoreInteractions(mockAuthRepository);
    });
  });
}
