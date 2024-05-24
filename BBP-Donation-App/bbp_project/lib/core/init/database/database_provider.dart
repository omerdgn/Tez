import 'package:bbp_project/core/init/database/database_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class DatabaseProvider<T extends DatabaseModel> {
  late Database database;

  Future open();
  Future getItem(int id);
  Future<List<T>> getList();
  Future<bool> updateItem(int id, T model);
  Future<bool> removeItem(int id);
  Future<bool> insertItem(T model);

  Future<void> close() async {
    await database.close();
  }
}
