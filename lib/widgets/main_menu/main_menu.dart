import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  final bool isExpanded;
  const MainMenu({Key? key, required this.isExpanded}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final List<MainMenuItem> mainMenuItems = [
    MainMenuItem(leading: Icons.home, title: "Menu1", fn: () {}),
    MainMenuItem(leading: Icons.book, title: "Menu2", fn: () {}),
    MainMenuItem(leading: Icons.music_note, title: "Menu3", fn: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: mainMenuItems.length,
        itemBuilder: (context, index) {
          return widget.isExpanded
              ? ListTile(
                  leading: Icon(mainMenuItems[index].leading),
                  title: Text(mainMenuItems[index].title),
                  onTap: mainMenuItems[index].fn,
                )
              : ListTile(
                  leading: Icon(mainMenuItems[index].leading),
                  onTap: mainMenuItems[index].fn,
                );
        });
  }
}

class MainMenuItem {
  final IconData leading;
  final String title;
  final VoidCallback? fn;

  MainMenuItem({required this.leading, required this.title, required this.fn});
}
