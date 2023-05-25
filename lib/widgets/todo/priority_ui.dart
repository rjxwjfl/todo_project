import 'package:flutter/material.dart';
import 'package:todo_project/utils/date_formatter.dart';

class PriorityUI extends StatelessWidget {
  const PriorityUI({required this.priority, Key? key}) : super(key: key);

  final int priority;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(todoTime.format(DateTime.now()), style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w500, letterSpacing: -1.0),),
        Container(
          width:50.0,
          height: 50.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54)
          ),
          child: Center(child: priorityString(priority)),
        ),
      ],
    );
  }

  Text priorityString(int priority) {
    const map = {
      1: Text("L", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black54),),
      2: Text("M", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black54),),
      3: Text("H", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.greenAccent),),
      4: Text("I", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.orange),),
      5: Text("E", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.redAccent),)
    };

    return map[priority]?? const Text("");
  }
}
