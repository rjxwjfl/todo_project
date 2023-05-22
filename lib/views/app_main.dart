import 'package:flutter/material.dart';
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
          TodoViewUI(callback: (){},)
        ],
      ),
    );
  }
}
