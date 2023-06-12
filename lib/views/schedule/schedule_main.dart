import 'package:flutter/material.dart';
import 'package:todo_project/views/schedule/todo_main.dart';
import 'package:todo_project/widgets/schedule/appbar_button_ui.dart';

class ScheduleMain extends StatefulWidget {
  const ScheduleMain({super.key});

  @override
  State<ScheduleMain> createState() => _ScheduleMainState();
}

class _ScheduleMainState extends State<ScheduleMain> {
  bool isTodoSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black54,
        title: Row(
          children: [
            AppBarButtonUI(title: "Todo", callback: (){}),
            const VerticalDivider(
              color: Colors.black54,
            ),
            AppBarButtonUI(title: "Group Schedule", callback: (){})
          ],
        ),
      ),
      body: TodoMain(),
    );
  }
}
