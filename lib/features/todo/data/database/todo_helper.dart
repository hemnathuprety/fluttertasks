import 'package:fluttertasks/features/todo/data/database/todo_fields.dart';
import 'package:fluttertasks/features/todo/data/models/todo_data_model.dart';
import 'package:fluttertasks/shared/database_helper.dart';
import 'package:injectable/injectable.dart';
@injectable
class TodoHelper {
  final DatabaseHelper _instance = DatabaseHelper.instance;

  Future<TodoDataModel> create(TodoDataModel todo) async {
    final db = await _instance.database;
    final id =
        await db.insert(TodoFields.tableName, todo.toJson());
    return todo.copyWith(id: id);
  }

  Future<TodoDataModel> read(int id) async {
    final db = await _instance.database;
    final maps = await db.query(
      TodoFields.tableName,
      columns: TodoFields.values,
      where: '${TodoFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return TodoDataModel.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<TodoDataModel>> readAll() async {
    final db = await _instance.database;
    const orderBy = '${TodoFields.id} DESC';
    final result =
        await db.query(TodoFields.tableName, orderBy: orderBy);
    return result.map((json) => TodoDataModel.fromJson(json)).toList();
  }

  Future<int> update(TodoDataModel model) async {
    final db = await _instance.database;
    return db.update(
      TodoFields.tableName,
      model.toJson(),
      where: '${TodoFields.id} = ?',
      whereArgs: [model.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await _instance.database;
    return await db.delete(
      TodoFields.tableName,
      where: '${TodoFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteAll() async {
    final db = await _instance.database;
    return await db.delete(TodoFields.tableName);
  }

  Future close() async {
    final db = await _instance.database;
    db.close();
  }
}
