import 'package:flutter/material.dart';

import '../../models/todo/todo_model.dart';
import '../../utils/group_by_date.dart';
import '../../widgets/todo/group_by_date_todo.dart';

class TodoMain extends StatelessWidget {
  const TodoMain({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, List<TodoModel>> map = groupByDate(TodoModel.sampleTodoModelList);
    return Padding(
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
      );
  }
}
// https://www.pinterest.co.kr/pin/kosh--724375921333525641/
