import 'package:flutter/material.dart';
import 'package:todo_project/utils/date_formatter.dart';

class DateIndicator extends StatelessWidget {
  const DateIndicator({required this.date, Key? key}) : super(key: key);

  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                weekDayOutput(DateTime.parse(date).weekday),
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: "NotoSans"),
              ),
              Text(todoDate.format(DateTime.parse(date)), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: "NotoSans"),)
            ],
          ),
        ),
        const Divider(
          height: 5.0,
          thickness: 2.0,
          color: Colors.black54,
        )
      ],
    );
  }

  String weekDayOutput(int weekday) {
    const map = {1: "Mon", 2: "Tue", 3: "Wed", 4: "Thu", 5: "Fri", 6: "Sat", 7: "Sun"};
    return map[weekday] ?? "";
  }
}
