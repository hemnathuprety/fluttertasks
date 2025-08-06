import 'dart:async';

import 'package:fluttertasks/features/todo/data/database/todo_fields.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._internal();

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = '$databasePath/fluttertasks.db';
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
      onUpgrade: _onUpgrade,
    );
  }

  FutureOr<void> _onUpgrade(db, oldVersion, newVersion) async {

  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
        CREATE TABLE ${TodoFields.tableName} (
          ${TodoFields.id} ${TodoFields.idType},
          ${TodoFields.title} ${TodoFields.titleType},
          ${TodoFields.description} ${TodoFields.descriptionType},
          ${TodoFields.dueDate} ${TodoFields.dueDateType}
        )
      ''');

  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
