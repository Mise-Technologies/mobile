import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:moPass/models/dish.dart';

class DataStore {
  
  static final _databaseName = "dishes.db";
  static final _databaseVersion = 1;

  bool _needsRefresh = true;

  // make this a singleton class
  DataStore._privateConstructor();
  static final DataStore store = DataStore._privateConstructor();

  // only have a single app-wide reference to the database
  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    // lazily instantiate the db the first time it is accessed
    _database = await _initDatabase();
    return _database;
  }
  
  // this opens the database (and creates it if it doesn't exist)
  Future<Database> _initDatabase() async {
    String path = join((await getApplicationDocumentsDirectory()).path, _databaseName);
    return await openDatabase(path,
      version: _databaseVersion,
      onCreate: _onCreate
    );
  }

  // SQL code to create the database table
  Future _onCreate(Database db, int version) async {
    await db.execute(
      '''CREATE TABLE dishes(
          id INTEGER PRIMARY KEY AUTOINCREMENT, 
          name TEXT NOT NULL,
          description TEXT NOT NULL,
          category TEXT NOT NULL,
          talk_points TEXT NOT NULL,
          allergens TEXT NOT NULL
        );
      '''
    );
  }
  
  // Helper methods

  // Inserts a row in the database where each key in the Map is a column name
  // and the value is the column value. The return value is the id of the
  // inserted row.
  Future<int> insert(String table, Map<String, dynamic> row) async {
    Database db = await store.database;
    return await db.insert(table, row);
  }

  // All of the rows are returned as a list of maps, where each map is 
  // a key-value list of columns.
  Future<List<Map<String, dynamic>>> queryAllRows(String table) async {
    Database db = await store.database;
    return await db.query(table);
  }

  List<String> _categories;
  List<Dish> _dishes;
  Map<String, Dish> _dishesByCategory;
  Map<String, Set<Dish>> _dishesByAllergens;

  void _syncWithDB() {

  }

  List<String> get categories {
    if (_needsRefresh) {
      _syncWithDB();
    }
    return _categories;
  }




}