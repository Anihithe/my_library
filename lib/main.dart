import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:my_library/widgets/window_main/window_main.dart';
import 'package:my_library/widgets/window_menu/window_bar.dart';
import 'dart:io' show Platform;

void main() {
  runApp(const MyApp());

  if (Platform.isWindows || Platform.isLinux) {
    doWhenWindowReady(() {
      const initialSize = Size(600, 450);
      appWindow.minSize = initialSize;
      appWindow.size = initialSize;
      appWindow.alignment = Alignment.center;
      appWindow.show();
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WindowBorder(
          color: Colors.red,
          child: Column(
            children: const [
              WindowBar(),
              WindowMain(),
            ],
          ),
        ),
      ),
    );
  }
}
