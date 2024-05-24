import 'package:bbp_project/core/init/database/database_provider.dart';
import 'package:bbp_project/view/donater/model/donater_model.dart';
import 'package:sqflite/sqflite.dart';

class DonaterDbProvider extends DatabaseProvider<DonaterModel> {
  final String _bbpDbName = "bbpDatabase";
  final String _donaterTableName = "donaterTable";
  final int _version = 1;
  late Database database;

  String columnId = "id";
  String columnName = "name";
  String columnSurname = "surname";
  String columnPhoneNum = "phoneNum";
  String columnEMail = "eMail";
  String columnDonaterUserName = "donaterUserName";
  String columnDonaterPassword = "donaterPassword";
  String columnDonationCount = "donationCount";
  String columnTotalDonationAmount = "totalDonationAmount";

  @override
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
        $columnEMail VARCHAR(20), $columnDonaterUserName VARCHAR(20), $columnDonaterPassword VARCHAR(20), $columnDonationCount INTEGER, $columnTotalDonationAmount INTEGER)''',
    );
  }

  @override
  Future<List<DonaterModel>> getList() async {
    List<Map<String, dynamic>> donaterMaps =
        await database.query(_donaterTableName);
    return donaterMaps.map((e) => DonaterModel.fromJson(e)).toList();
  }

  @override
  Future<DonaterModel> getItem(int id) async {
    List<Map<String, dynamic>> donaterMaps = await database.query(
      _donaterTableName,
      where: '$columnId = ?',
      whereArgs: [id],
    );
    if (donaterMaps.isNotEmpty) {
      return DonaterModel.fromJson(donaterMaps.first);
    } else {
      throw Exception("Item not found");
    }
  }

  @override
  Future<bool> insertItem(DonaterModel model) async {
    int result = await database.insert(
      _donaterTableName,
      model.toJson(),
    );
    return result > 0;
  }

  @override
  Future<bool> updateItem(int id, DonaterModel model) async {
    int count = await database.update(
      _donaterTableName,
      model.toJson(),
      where: '$columnId = ?',
      whereArgs: [id],
    );
    return count > 0;
  }

  @override
  Future<bool> removeItem(int id) async {
    int count = await database.delete(
      _donaterTableName,
      where: '$columnId = ?',
      whereArgs: [id],
    );
    if (count == 0) {
      throw Exception("Item not found");
    } else {
      return true;
    }
  }

  @override
  Future<void> close() async {
    await database.close();
  }
}
