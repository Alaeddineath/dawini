import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static const _databaseName = "MedicineDB.db";
  static const _databaseVersion = 1;
  static Database? database; // Changed from var to Database? for null-safety

static Future<Database> getDatabase() async {
  if (database != null) return database!;
  database = await openDatabase(
    join(await getDatabasesPath(), _databaseName),
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE Medicine (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          form TEXT,
          frequency TEXT,
          time TEXT,
          dosage INTEGER,
          startDate TEXT,
          endDate TEXT,
          duration INTEGER
        )
      ''');
    },
    version: _databaseVersion,
  );
  return database!;
}

}
