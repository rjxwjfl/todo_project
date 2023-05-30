import 'package:flutter/material.dart';
import 'package:todo_project/models/todo/todo_model.dart';
import 'package:todo_project/widgets/todo/composite/priority_indicator.dart';

class TodoUI extends StatelessWidget {
  const TodoUI({required this.callback, required this.model, Key? key}) : super(key: key);

  final VoidCallback callback;
  final TodoModel model;

  @override
  Widget build(BuildContext context) {
    TextStyle headLineStyle = const TextStyle(fontWeight: FontWeight.bold);
    return Column(
      children: [
        InkWell(
          onTap: callback,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                PriorityIndicator(priority: model.priority),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(model.title, style: headLineStyle),
                      Text(model.todoDesc),
                      const SizedBox(height: 5.0),
                      Text("발신 : ${model.sender.displayName}", style: const TextStyle(fontSize: 10.0)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black54,
          thickness: 1.0,
          height: 5.0,
        ),
      ],
    );
  }
}
