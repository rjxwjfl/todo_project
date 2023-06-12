import 'package:flutter/material.dart';

class GroupMain extends StatelessWidget {
  const GroupMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("group home"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Placeholder()
          ],
        ),
      ),
    );
  }
}
