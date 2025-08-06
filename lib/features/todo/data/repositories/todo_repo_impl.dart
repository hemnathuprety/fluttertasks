import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fluttertasks/features/todo/data/datasources/todo_data_source.dart';
import 'package:fluttertasks/features/todo/data/models/todo_data_model.dart';
import 'package:fluttertasks/features/todo/domain/repositories/todo_repo.dart';
import 'package:fluttertasks/shared/error/exceptions.dart';
import 'package:fluttertasks/shared/error/failures.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TodoRepo)
class TodoRepoImpl extends TodoRepo {
  final TodoDataSource todoDataSource;

  TodoRepoImpl({required this.todoDataSource});

  //Save advisory method
  @override
  Future<Either<Failure, TodoDataModel?>> saveTodo(dynamic params) async {
    try {
      final result = await todoDataSource.saveTodo(params);

      return right(result);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(message: e.errorMessage.toString()));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, bool?>> deleteTodo(Map<String, dynamic> params) async {
    try {
      final result = await todoDataSource.deleteTodo(params);

      return right(result);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(message: e.errorMessage.toString()));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, List<TodoDataModel>>> getTodoList(String params
      ) async {
    try {
      final result = await todoDataSource.getTodoList(params);

      return right(result);
    } on ServerException catch (e) {
      return Left(BaseResponseFailure(message: e.errorMessage.toString()));
    } catch (e) {
      log("message $e");
      return Left(BaseResponseFailure(message: 'Something went wrong'));
    }
  }
}
