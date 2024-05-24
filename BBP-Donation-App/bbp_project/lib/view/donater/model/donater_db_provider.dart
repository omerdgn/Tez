import 'package:bbp_project/view/donater/model/donater_model.dart';
import 'package:sqflite/sqflite.dart';

class DonaterDbProvider {
  final String _bbpDbName = "bbpDatabase";
  final String _donaterTableName = "donaterTable";
  final int _version = 1;
  Database? database;

  String columnId = "id";
  String columnName = "name";
  String columnSurname = "surname";
  String columnPhoneNum = "phoneNum";
  String columnEMail = "eMail";
  String columnDonaterUserName = "donaterUserName";
  String columnDonaterPassword = "donaterPassword";
  String columnDonationCount = "donationCount";
  String columnTotalDonationAmount = "totalDonationAmount";

  Future<void> open() async {
    database = await openDatabase(_bbpDbName, version: _version,
        onCreate: (db, version) {
      createTable(db);
    });
  }

  void createTable(Database db) {
    db.execute(
      '''CREATE TABLE $_donaterTableName ( $columnId INTEGER PRIMARY KEY AUTOINCREMENT, 
        $columnName VARCHAR(20), $columnSurname VARCHAR(20), $columnPhoneNum VARCHAR(20), 
        $columnEMail VARCHAR(20), $columnDonaterUserName VARCHAR(20), $columnDonaterPassword VARCHAR(20), $columnDonationCount INTEGER, $columnTotalDonationAmount INTEGER,)''',
    );
  }

  Future<List<DonaterModel>> getList() async {
    if (database == null) {
      await open();
    }
    if (database != null) {
      List<Map<String, dynamic>> donaterMaps =
          await database!.query(_donaterTableName);
      return donaterMaps.map((e) => DonaterModel.fromJson(e)).toList();
    } else {
      throw Exception("Database is not open");
    }
  }

  Future<DonaterModel> getItem(int id) async {
    if (database == null) {
      await open();
    }
    if (database != null) {
      List<Map<String, dynamic>> donaterMaps = await database!.query(
        _donaterTableName,
        where: '$columnId = ?',
        whereArgs: [id],
      );
      if (donaterMaps.isNotEmpty) {
        return DonaterModel.fromJson(donaterMaps.first);
      } else {
        throw Exception("Item not found");
      }
    } else {
      throw Exception("Database is not open");
    }
  }

  Future<bool> insertItem(DonaterModel model) async {
    if (database == null) {
      await open();
    }
    if (database != null) {
      int result = await database!.insert(
        _donaterTableName,
        model.toJson(),
      );
      return result > 0;
    } else {
      throw Exception("Database is not open");
    }
  }

  Future<void> deleteItem(int id) async {
    if (database == null) {
      await open();
    }
    if (database != null) {
      int count = await database!.delete(
        _donaterTableName,
        where: '$columnId = ?',
        whereArgs: [id],
      );
      if (count == 0) {
        throw Exception("Item not found");
      }
    } else {
      throw Exception("Database is not open");
    }
  }

  Future<bool> update(int id, DonaterModel model) async {
    if (database == null) {
      await open();
    }
    if (database != null) {
      int count = await database!.update(
        _donaterTableName,
        model.toJson(),
        where: '$columnId = ?',
        whereArgs: [id],
      );
      return count > 0;
    } else {
      throw Exception("Database is not open");
    }
  }

  Future<void> close() async {
    if (database != null) {
      await database!.close();
      database = null; // Optionally set to null after closing
    } else {
      throw Exception("Database is not open");
    }
  }
}
