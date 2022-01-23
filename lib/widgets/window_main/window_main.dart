import 'package:flutter/material.dart';
import 'package:my_library/widgets/main_menu/main_menu.dart';

class WindowMain extends StatelessWidget {
  const WindowMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        AppMenu(),
        AppFrame(),
      ],
    );
  }
}

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200,
      child: MainMenu(),
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
