import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Text("Menu1"),
        Text("Menu2"),
        Text("Menu3"),
        Text("Menu4"),
      ],
    ));
  }
}
