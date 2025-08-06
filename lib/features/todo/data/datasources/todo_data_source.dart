import 'dart:developer';

import 'package:fluttertasks/features/todo/data/database/todo_helper.dart';
import 'package:fluttertasks/features/todo/data/models/todo_data_model.dart';
import 'package:injectable/injectable.dart';

abstract class TodoDataSource {
  Future<TodoDataModel?> saveTodo(dynamic todoModel);

  Future<List<TodoDataModel>> getTodoList(String params);

  Future<bool> deleteTodo(Map<String, dynamic> params);
}

@LazySingleton(as: TodoDataSource)
class TodoDataSourceImpl implements TodoDataSource {
  final TodoHelper todoHelper = TodoHelper();

  @override
  Future<List<TodoDataModel>> getTodoList(String params) async {
    try {
      var dataList = await todoHelper.readAll();
      return dataList;
    } catch (e) {
      log("message $e");
      rethrow;
    }
  }

  @override
  Future<bool> deleteTodo(Map<String, dynamic> params) async {
    try {
      int id = params["id"];
      await todoHelper.delete(id);
      return true;
    } catch (e) {
      log("message $e");
      rethrow;
    }
  }

  @override
  Future<TodoDataModel?> saveTodo(todoModel) async {
    try {
      var result = await todoHelper.create(todoModel);
      return result;
    } on Exception catch (err) {
      log("message ${err.toString()}");
      rethrow;
    }
  }
}
