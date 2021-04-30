import 'package:flutter/material.dart';
import 'package:spritewidget_example/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SpriteWidget Example",
      theme: ThemeData.dark(),
      home: MainPage(),
    );
  }
}
