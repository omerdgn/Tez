import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabase {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initializeDb("Local.db");
    return _database!;
  }

  Future<Database> _initializeDb(String filepath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filepath);
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDb,
    );
  }

  Future<void> _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE DonaterTable(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT NOT NULL,
        password TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE DonationTable(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        donaterId INTEGER NOT NULL,
        donationAmount INTEGER NOT NULL,
        donationDate TEXT NOT NULL,
        FOREIGN KEY (donaterId) REFERENCES DonaterTable(id)
      )
    ''');

    await db.execute('''
      CREATE TABLE ApplicantsTable(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        surname TEXT NOT NULL,
        phoneNum TEXT NOT NULL,
        eMail TEXT NOT NULL,
        address TEXT NOT NULL,
        isActiveObs INTEGER NOT NULL,
        isApplicationResultPositive INTEGER,
        applicationDate TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE ApprovedTable(
        applicantId INTEGER PRIMARY KEY AUTOINCREMENT,
        approveDate TEXT NOT NULL,
        FOREIGN KEY (applicantId) REFERENCES ApplicantsTable(id)
      )
    ''');

    await db.execute('''
      CREATE TABLE ComputerTable(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        givenPersonId INTEGER NOT NULL,
        deliveryDate TEXT NOT NULL,
        FOREIGN KEY (givenPersonId) REFERENCES ApplicantsTable(id)
      )
    ''');
  }

  // DonaterTable'a veri ekleme fonksiyonu
  Future<void> addDataToDonaterTable({
    required String username,
    required String password,
  }) async {
    final db = await database;
    await db.insert("DonaterTable", {
      "username": username,
      "password": password,
    });
    print("Added to DonaterTable successfully");
  }

  // Diğer tablolara veri ekleme fonksiyonları
  Future<void> addDataToDonationTable({
    required int donaterId,
    required int donationAmount,
    required String donationDate,
  }) async {
    final db = await database;
    await db.insert("DonationTable", {
      "donaterId": donaterId,
      "donationAmount": donationAmount,
      "donationDate": donationDate,
    });
    print("Added to DonationTable successfully");
  }

  Future<void> addDataToApplicantsTable({
    required String name,
    required String surname,
    required String phoneNum,
    required String eMail,
    required String address,
    required int isActiveObs,
    int? isApplicationResultPositive,
    required String applicationDate,
  }) async {
    final db = await database;
    await db.insert("ApplicantsTable", {
      "name": name,
      "surname": surname,
      "phoneNum": phoneNum,
      "eMail": eMail,
      "address": address,
      "isActiveObs": isActiveObs,
      "isApplicationResultPositive": isApplicationResultPositive,
      "applicationDate": applicationDate,
    });
    print("Added to ApplicantsTable successfully");
  }

  Future<void> addDataToApprovedTable({
    required int applicantId,
    required String approveDate,
  }) async {
    final db = await database;
    await db.insert("ApprovedTable", {
      "applicantId": applicantId,
      "approveDate": approveDate,
    });
    print("Added to ApprovedTable successfully");
  }

  Future<void> addDataToComputerTable({
    required int givenPersonId,
    required String deliveryDate,
  }) async {
    final db = await database;
    await db.insert("ComputerTable", {
      "givenPersonId": givenPersonId,
      "deliveryDate": deliveryDate,
    });
    print("Added to ComputerTable successfully");
  }

  // Belirli bir id'ye göre verileri getiren fonksiyonlar
  Future<Map<String, dynamic>?> getDonaterById(int id) async {
    final db = await database;
    final result = await db.query(
      "DonaterTable",
      where: "id = ?",
      whereArgs: [id],
    );
    return result.isNotEmpty ? result.first : null;
  }

  Future<Map<String, dynamic>?> getDonationById(int id) async {
    final db = await database;
    final result = await db.query(
      "DonationTable",
      where: "id = ?",
      whereArgs: [id],
    );
    return result.isNotEmpty ? result.first : null;
  }

  Future<Map<String, dynamic>?> getApplicantById(int id) async {
    final db = await database;
    final result = await db.query(
      "ApplicantsTable",
      where: "id = ?",
      whereArgs: [id],
    );
    return result.isNotEmpty ? result.first : null;
  }

  Future<Map<String, dynamic>?> getApprovedById(int applicantId) async {
    final db = await database;
    final result = await db.query(
      "ApprovedTable",
      where: "applicantId = ?",
      whereArgs: [applicantId],
    );
    return result.isNotEmpty ? result.first : null;
  }

  Future<Map<String, dynamic>?> getComputerById(int id) async {
    final db = await database;
    final result = await db.query(
      "ComputerTable",
      where: "id = ?",
      whereArgs: [id],
    );
    return result.isNotEmpty ? result.first : null;
  }

  // İlişkili verileri getiren fonksiyonlar
  Future<List<Map<String, dynamic>>> getDonationsByDonaterId(
      int donaterId) async {
    final db = await database;
    final result = await db.rawQuery('''
      SELECT DonationTable.*, DonaterTable.username 
      FROM DonationTable 
      INNER JOIN DonaterTable ON DonationTable.donaterId = DonaterTable.id 
      WHERE DonaterTable.id = ?
    ''', [donaterId]);

    return result;
  }

  Future<List<Map<String, dynamic>>> getApprovedByApplicantId(
      int applicantId) async {
    final db = await database;
    final result = await db.rawQuery('''
      SELECT ApprovedTable.*, ApplicantsTable.name, ApplicantsTable.surname 
      FROM ApprovedTable 
      INNER JOIN ApplicantsTable ON ApprovedTable.applicantId = ApplicantsTable.id 
      WHERE ApplicantsTable.id = ?
    ''', [applicantId]);

    return result;
  }

  Future<List<Map<String, dynamic>>> getComputersByApplicantId(
      int applicantId) async {
    final db = await database;
    final result = await db.rawQuery('''
      SELECT ComputerTable.*, ApplicantsTable.name, ApplicantsTable.surname 
      FROM ComputerTable 
      INNER JOIN ApplicantsTable ON ComputerTable.givenPersonId = ApplicantsTable.id 
      WHERE ApplicantsTable.id = ?
    ''', [applicantId]);

    return result;
  }

  // Tabloları güncelleyen fonksiyonlar
  Future<int> updateDonater({
    required int id,
    required String username,
    required String password,
  }) async {
    final db = await database;
    return await db.update(
      "DonaterTable",
      {
        "username": username,
        "password": password,
      },
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> updateDonation({
    required int id,
    required int donaterId,
    required int donationAmount,
    required String donationDate,
  }) async {
    final db = await database;
    return await db.update(
      "DonationTable",
      {
        "donaterId": donaterId,
        "donationAmount": donationAmount,
        "donationDate": donationDate,
      },
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> updateApplicant({
    required int id,
    required String name,
    required String surname,
    required String phoneNum,
    required String eMail,
    required String address,
    required int isActiveObs,
    int? isApplicationResultPositive,
    required String applicationDate,
  }) async {
    final db = await database;
    return await db.update(
      "ApplicantsTable",
      {
        "name": name,
        "surname": surname,
        "phoneNum": phoneNum,
        "eMail": eMail,
        "address": address,
        "isActiveObs": isActiveObs,
        "isApplicationResultPositive": isApplicationResultPositive,
        "applicationDate": applicationDate,
      },
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> updateApproved({
    required int applicantId,
    required String approveDate,
  }) async {
    final db = await database;
    return await db.update(
      "ApprovedTable",
      {
        "approveDate": approveDate,
      },
      where: "applicantId = ?",
      whereArgs: [applicantId],
    );
  }

  Future<int> updateComputer({
    required int id,
    required int givenPersonId,
    required String deliveryDate,
  }) async {
    final db = await database;
    return await db.update(
      "ComputerTable",
      {
        "givenPersonId": givenPersonId,
        "deliveryDate": deliveryDate,
      },
      where: "id = ?",
      whereArgs: [id],
    );
  }

  // Tablolardan veri silen fonksiyonlar
  Future<int> deleteDonater(int id) async {
    final db = await database;
    return await db.delete(
      "DonaterTable",
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> deleteDonation(int id) async {
    final db = await database;
    return await db.delete(
      "DonationTable",
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> deleteApplicant(int id) async {
    final db = await database;
    return await db.delete(
      "ApplicantsTable",
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> deleteApproved(int applicantId) async {
    final db = await database;
    return await db.delete(
      "ApprovedTable",
      where: "applicantId = ?",
      whereArgs: [applicantId],
    );
  }

  Future<int> deleteComputer(int id) async {
    final db = await database;
    return await db.delete(
      "ComputerTable",
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
