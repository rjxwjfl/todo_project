import 'package:flutter/material.dart';

class AppBarButtonUI extends StatelessWidget {
  const AppBarButtonUI({required this.title, required this.callback, super.key});

  final String title;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Text(title),
    );
  }
}
