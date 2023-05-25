import 'package:flutter/material.dart';
import 'package:todo_project/utils/date_formatter.dart';

class PriorityUI extends StatelessWidget {
  const PriorityUI({required this.priority, Key? key}) : super(key: key);

  final int priority;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          todoTime.format(DateTime.now()),
          style: const TextStyle(fontSize: 14, letterSpacing: -1.0, fontFamily: "Swagger"),
        ),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("중요도", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: -1.5),),
                priorityString(priority)
              ],
            )
          ),
        ),
      ],
    );
  }

  Text priorityString(int priority) {
    TextStyle defaultStyle = const TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: Colors.black54, fontFamily: "Swagger", letterSpacing: -1.5);
    var map = {
      1: Text( "낮음",
        style: defaultStyle,
      ),
      2: Text("중간",
        style: defaultStyle,
      ),
      3: Text("높음",
        style: defaultStyle,
      ),
      4: const Text("중요",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: Colors.orange, fontFamily: "Swagger", letterSpacing: -1.5),
      ),
      5: const Text("긴급",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: Colors.redAccent, fontFamily: "Swagger", letterSpacing: -1.5),
      )
    };

    return map[priority] ?? const Text("");
  }
}
