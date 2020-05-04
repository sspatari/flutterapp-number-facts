import 'package:dartz/dartz.dart';
import 'package:flutterapp/core/error/failures.dart';
import 'package:flutterapp/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
