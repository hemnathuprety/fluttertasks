import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

//General Failures
class ServerFailure extends Failure {
  final String message;

  ServerFailure({this.message = 'Something went wrong'});
}

class UnAuthFailure extends Failure {}

class CacheFailure extends Failure {}

class EmptyFieldFailure extends Failure {}

class InvalidInputFailure extends Failure {}


class BaseResponseFailure extends Failure {
  final String message;

  BaseResponseFailure({required this.message});
}
