import 'package:flutter/material.dart';
import 'package:spritewidget/spritewidget.dart';
import 'package:spritewidget_example/sprites/root_node.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SpriteWidget(
                RootNode(size),
              ),
            ),
            Container(
              width: size.width,
              height: size.height,
              color: Colors.black.withAlpha(0),
            ),
          ],
        ),
      ),
    );
  }
}
