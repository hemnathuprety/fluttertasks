import 'package:dartz/dartz.dart';
import 'package:fluttertasks/features/todo/data/models/todo_data_model.dart';
import 'package:fluttertasks/shared/error/failures.dart';

abstract class TodoRepo {
  Future<Either<Failure, TodoDataModel?>> saveTodo(dynamic params);

  Future<Either<Failure, List<TodoDataModel>>> getTodoList(String params);

  Future<Either<Failure, bool?>> deleteTodo(
    Map<String, dynamic> params,
  );
}
