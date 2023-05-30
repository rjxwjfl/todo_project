import 'package:flutter/material.dart';
import 'package:todo_project/models/todo/todo_model.dart';
import 'package:todo_project/utils/group_by_date.dart';
import 'package:todo_project/widgets/todo/group_by_date_todo.dart';

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, List<TodoModel>> map = groupByDate(TodoModel.sampleTodoModelList);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample"),
        elevation: 0.0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: map.length,
          itemBuilder: (context, index) {
            String date = map.keys.elementAt(index);
            List<TodoModel> list = map[date]!;
            return GroupByDateTodo(date: date, model: list);
          },
        ),
      ),
    );
  }
}
