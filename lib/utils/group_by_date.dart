import 'package:intl/intl.dart';
import 'package:todo_project/models/todo/todo_model.dart';

Map<String, List<TodoModel>> groupByDate(List<TodoModel> todoList) {
  Map<String, List<TodoModel>> groupedMap = {};
  for (TodoModel todo in todoList) {
    String dateKey = keyFormat(todo.startDate);

    if (groupedMap.containsKey(dateKey)) {
      groupedMap[dateKey]!.add(todo);
    } else {
      groupedMap[dateKey] = [todo];
    }
  }
  return groupedMap;
}

String keyFormat(DateTime date) {
  DateFormat format = DateFormat("yyyyMMdd");

  return format.format(date);
}
