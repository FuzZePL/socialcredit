import 'package:first_flutter_app/screens/image_screen.dart';
import 'package:first_flutter_app/screens/main_screen.dart';
import 'package:first_flutter_app/screens/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartScreen(),
      routes: {
        ImageScreen.routeName: (ctx) => const ImageScreen(),
        MainScreen.routename: (ctx) => MainScreen(
              i: 0,
              points: 0,
            ),
      },
    );
  }
}
