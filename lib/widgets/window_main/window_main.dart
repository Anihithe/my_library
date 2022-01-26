import 'package:flutter/material.dart';

class WindowMain extends StatelessWidget {
  const WindowMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: MainView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  List list = [
    const HomePage(text: "Home", color: Colors.red),
    const HomePage(text: "Book", color: Colors.yellow),
    const HomePage(text: "Music", color: Colors.blue),
    const HomePage(text: "Param", color: Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          onDestinationSelected: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          selectedIndex: _selectedIndex,
          labelType: NavigationRailLabelType.selected,
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text("Home"),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.book),
              label: Text("Book"),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.music_note),
              label: Text("Music"),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.settings),
              label: Text("settings"),
            ),
          ],
        ),
        Expanded(child: list[_selectedIndex]),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.text, required this.color})
      : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
          child: Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0))),
    );
  }
}

class AppFrame extends StatelessWidget {
  const AppFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(color: Colors.red),
    );
  }
}
