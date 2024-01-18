import 'package:dartz/dartz.dart';
import '../error/failure.dart';

typedef ResultVoid = Future<Either<Failure, void>>;

typedef ResultFuture<T> = Future<Either<Failure, T>>;
