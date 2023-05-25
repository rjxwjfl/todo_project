import 'package:flutter/material.dart';
import 'package:todo_project/widgets/todo/priority_ui.dart';

class TodoViewUI extends StatelessWidget {
  const TodoViewUI({required this.callback, required this.priority, Key? key}) : super(key: key);

  final VoidCallback callback;
  final int priority;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      // splashColor: Colors.transparent,
      // focusColor: Colors.transparent,
      // highlightColor: Colors.transparent,
      // hoverColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            PriorityUI(priority: priority),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Title"),
                  Text("Description"),
                  Text("writer"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
