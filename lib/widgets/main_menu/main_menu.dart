import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text("text"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text("text"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text("text"),
          onTap: () {},
        ),
      ],
    );
  }
}
