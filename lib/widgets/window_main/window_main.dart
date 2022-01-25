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

class AppMenu extends StatefulWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  bool isExpanded = true;

  double menuSize = 200;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: menuSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: MainMenu(
              isExpanded: isExpanded,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
                alignment: Alignment.centerRight),
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
                menuSize = isExpanded ? 200 : 60;
              });
            },
            child: Icon(
              isExpanded ? Icons.arrow_back : Icons.arrow_forward,
              color: Colors.grey,
            ),
          )
        ],
      ),
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
