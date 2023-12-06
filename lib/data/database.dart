import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box("myBox");

// run this methos if this is the 1sd time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make a tutorial", false],
      ["Do exercise", false]
    ];
  }

  // load the data from the db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the db
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
