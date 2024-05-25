import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Database? _database;

class LocalDatabase {
  Future get database async {
    if (_database != null) {
      return _database;
    }
    _database = await _initializeDb("Local.db");
    return _database;
  }

  Future _initializeDb(String filepath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filepath);
    return await openDatabase(path, version: 1, onCreate: _createDb);
  }

  Future _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE LocalData(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        surname TEXT NOT NULL,
        phoneNum TEXT NOT NULL,
        eMail TEXT NOT NULL,
        donaterUserName TEXT NOT NULL,
        donaterPassword TEXT NOT NULL,
        donationCount INTEGER,
        totalDonationAmount INTEGER,
         )

      ''');
  }

  Future addDataLocally({Name}) async {
    final db = await database;
    await db.insert("LocalData", {"Name": Name});
    print("Added to databse successfuly");
    return 'added';
  }
}
