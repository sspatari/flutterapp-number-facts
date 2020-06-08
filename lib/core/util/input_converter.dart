import 'package:dartz/dartz.dart';
import 'package:flutterapp/core/error/failures.dart';

class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String str) {
    try {
      final value = int.parse(str);
      if (value < 0) throw FormatException();
      return Right(value);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {
  @override
  List<Object> get props => [];
}
