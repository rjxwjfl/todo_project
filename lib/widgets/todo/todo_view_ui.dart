import 'package:flutter/material.dart';

class TodoViewUI extends StatelessWidget {
  const TodoViewUI({required this.callback, Key? key}) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            border: Border.all(color: Colors.black87)
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                child: Row(
                  children: const [
                    Expanded(child: Text("PRIORITY")),
                    Text("ICON POSITION #1"),
                    Text("ICON POSITION #2"),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                child: const Text("BODY"),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                child: const Text("LIMIT TIME"),
              )

            ],
          ),
        ),
      ),
    );
  }
}
