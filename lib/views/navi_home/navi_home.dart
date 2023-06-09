import 'package:flutter/material.dart';
import 'package:todo_project/widgets/navi_home/custom_bottom_navigation_bar.dart';

class NaviHome extends StatelessWidget {
  const NaviHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
        ]),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}