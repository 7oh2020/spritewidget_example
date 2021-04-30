import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spritewidget/spritewidget.dart';

import 'flat_node.dart';

class BaseNode extends NodeWithSize {
  BaseNode(Size size) : super(size) {
    nodes.forEach((node) {
      // 子スプライトを追加
      this.addChild(node);
    });
  }

  final nodes = <FlatNode>[
    FlatNode(
      color: Colors.blue,
      length: 50,
    )..position = Offset(0, 0),
    FlatNode(
      color: Colors.blue,
      length: 40,
    )..position = Offset(0, 70.0),
    FlatNode(
      color: Colors.blue[700],
      length: 45,
      reverse: true,
    )
      ..position = Offset(0, 70)
      ..rotation = 90.0
      ..zPosition = -1.0,
  ];
}
