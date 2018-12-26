import 'package:sqflite/sqflite.dart';

// // Get a location using getDatabasesPath
// var databasesPath = await getDatabasesPath();
// String path = join(databasesPath, "demo.db");

// // Delete the database
// await deleteDatabase(path);

// // open the database
// Database database = await openDatabase(path, version: 1,
//     onCreate: (Database db, int version) async {
//   // When creating the db, create the table
//   await db.execute(
//       "CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)");
// });

// // Insert some records in a transaction
// await database.transaction((txn) async {
//   int id1 = await txn.rawInsert(
//       'INSERT INTO Test(name, value, num) VALUES("some name", 1234, 456.789)');
//   print("inserted1: $id1");
//   int id2 = await txn.rawInsert(
//       'INSERT INTO Test(name, value, num) VALUES(?, ?, ?)',
//       ["another name", 12345678, 3.1416]);
//   print("inserted2: $id2");
// });

// // Update some record
// int count = await database.rawUpdate(
//     'UPDATE Test SET name = ?, VALUE = ? WHERE name = ?',
//     ["updated name", "9876", "some name"]);
// print("updated: $count");

// // Get the records
// List<Map> list = await database.rawQuery('SELECT * FROM Test');
// List<Map> expectedList = [
//   {"name": "updated name", "id": 1, "value": 9876, "num": 456.789},
//   {"name": "another name", "id": 2, "value": 12345678, "num": 3.1416}
// ];
// print(list);
// print(expectedList);
// assert(const DeepCollectionEquality().equals(list, expectedList));

// // Count the records
// count = Sqflite
//     .firstIntValue(await database.rawQuery("SELECT COUNT(*) FROM Test"));
// assert(count == 2);

// // Delete a record
// count = await database
//     .rawDelete('DELETE FROM Test WHERE name = ?', ['another name']);
// assert(count == 1);

// // Close the database
// await database.close();

final String tableTodo = "todo";
final String columnId = "_id";
final String columnTitle = "title";
final String columnDone = "done";

class Todo {
  int id;
  String title;
  bool done;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnTitle: title,
      columnDone: done == true ? 1 : 0
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  Todo();

  Todo.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    title = map[columnTitle];
    done = map[columnDone] == 1;
  }
}

class TodoProvider {
  Database db;

  Future open(String path) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
create table $tableTodo ( 
  $columnId integer primary key autoincrement, 
  $columnTitle text not null,
  $columnDone integer not null)
''');
    });
  }

  Future<Todo> insert(Todo todo) async {
    todo.id = await db.insert(tableTodo, todo.toMap());
    return todo;
  }

  Future<Todo> getTodo(int id) async {
    List<Map> maps = await db.query(tableTodo,
        columns: [columnId, columnDone, columnTitle],
        where: "$columnId = ?",
        whereArgs: [id]);
    if (maps.length > 0) {
      return new Todo.fromMap(maps.first);
    }
    return null;
  }

  Future<int> delete(int id) async {
    return await db.delete(tableTodo, where: "$columnId = ?", whereArgs: [id]);
  }

  Future<int> update(Todo todo) async {
    return await db.update(tableTodo, todo.toMap(),
        where: "$columnId = ?", whereArgs: [todo.id]);
  }

  Future close() async => db.close();
}

// Transaction

// await database.transaction((txn) async {
//   // Ok
//   await txn.execute("CREATE TABLE Test1 (id INTEGER PRIMARY KEY)");
  
//   // DON'T  use the database object in a transaction
//   // this will deadlock!
//   await database.execute("CREATE TABLE Test2 (id INTEGER PRIMARY KEY)");
// });


// Batch support

// batch = db.batch();
// batch.insert("Test", {"name": "item"});
// batch.update("Test", {"name": "new_item"}, where: "name = ?", whereArgs: ["item"]);
// batch.delete("Test", where: "name = ?", whereArgs: ["item"]);
// results = await batch.commit();
