import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_project/main.dart';

class CustomBottomNavigationBar extends ConsumerWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var refs = ref.watch(mainRoute);
    return SizedBox(
      child: BottomNavigationBar(
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        selectedFontSize: 12,
        unselectedFontSize: 10,
        unselectedIconTheme: const IconThemeData(size: 20),
        currentIndex: refs.selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          refs.pageRouteNavigator(index);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house), label: "Home"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.calendarCheck), label: "ToDo"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.users), label: "Do With"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.commentDots), label: "쪽지함"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.gears), label: "설정"),
        ],
      ),
    );
  }
}
