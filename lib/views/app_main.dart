import 'package:flutter/material.dart';
import 'package:todo_project/widgets/todo/date_indicator.dart';
import 'package:todo_project/widgets/todo/todo_view_ui.dart';

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample"),
        elevation: 0.0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          DateIndicator(),
          TodoViewUI(callback: (){}, priority: 1,),
          Divider(),
          TodoViewUI(callback: (){},priority: 2,),
          Divider(),
          TodoViewUI(callback: (){},priority: 3,),
          Divider(),
          TodoViewUI(callback: (){},priority: 4,),
          Divider(),
          TodoViewUI(callback: (){},priority: 5,),
          Divider(),
        ],
      ),
    );
  }
}
