import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import 'package:my_library/widgets/window_menu/window_buttons.dart';

class WindowBar extends StatelessWidget {
  const WindowBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WindowTitleBarBox(
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Icon(Icons.home),
          ),
          Expanded(
            child: MoveWindow(),
          ),
          const WindowButtons(),
        ],
      ),
    );
  }
}
