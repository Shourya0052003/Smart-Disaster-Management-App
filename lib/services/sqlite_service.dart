import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SQLiteService {
  static Future<Database> initializeDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'resources.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE resources(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            description TEXT
          )
        ''');
      },
    );
  }
}
