import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure([List proprieties = const <dynamic>[]]) : super([proprieties]);
}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
