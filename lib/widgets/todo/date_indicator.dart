import 'package:flutter/material.dart';

class DateIndicator extends StatelessWidget {
  const DateIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("Day")
            ],
          ),
          Divider(
            height: 5.0,
          )
        ],
      ),
    );
  }
}
