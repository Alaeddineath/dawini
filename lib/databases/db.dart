import 'package:sqflite/sqflite.dart';
import 'dbhelper.dart';

class MedicineDB {
  static Future<List<Map<String, dynamic>>> getAllMedicines() async {
    final db = await DBHelper.getDatabase();
    return await db.query('Medicine');
  }

  static Future<void> insertMedicine(Map<String, dynamic> medicine) async {
    final db = await DBHelper.getDatabase();
    await db.insert('Medicine', medicine, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<void> deleteMedicine(int id) async {
    final db = await DBHelper.getDatabase();
    await db.delete('Medicine', where: 'id = ?', whereArgs: [id]);
  }

  static Future<void> updateMedicine(int id, Map<String, dynamic> updatedValues) async {
    final db = await DBHelper.getDatabase();
    await db.update('Medicine', updatedValues, where: 'id = ?', whereArgs: [id]);
  }

  // Utility methods
  static Future<void> addDay(int id) async {
    final db = await DBHelper.getDatabase();
    await db.rawUpdate('''
      UPDATE Medicine
      SET endDate = datetime(endDate, '+1 day')
      WHERE id = ?
    ''', [id]);
  }

  static Future<void> extendMedication(int id, int days) async {
    final db = await DBHelper.getDatabase();
    await db.rawUpdate('''
      UPDATE Medicine
      SET endDate = datetime(endDate, '+$days days')
      WHERE id = ?
    ''', [id]);
  }

  static Future<void> updateDosage(int id, int newDosage) async {
    final db = await DBHelper.getDatabase();
    await db.update('Medicine', {'dosage': newDosage}, where: 'id = ?', whereArgs: [id]);
  }

  static Future<void> changeTime(int id, String newTime) async {
    final db = await DBHelper.getDatabase();
    await db.update('Medicine', {'time': newTime}, where: 'id = ?', whereArgs: [id]);
  }
}
