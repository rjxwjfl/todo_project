import 'package:flutter/material.dart';
import 'package:todo_project/models/todo/todo_model.dart';
import 'package:todo_project/widgets/todo/composite/date_indicator.dart';
import 'package:todo_project/widgets/todo/composite/todo_ui.dart';

class GroupByDateTodo extends StatelessWidget {
  const GroupByDateTodo({required this.date, required this.model, Key? key}) : super(key: key);

  final String date;
  final List<TodoModel> model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DateIndicator(date: date),
        ListView.builder(
          itemCount: model.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return TodoUI(callback: (){
            }, model: model[index]);
          },
        )
      ],
    );
  }
}
