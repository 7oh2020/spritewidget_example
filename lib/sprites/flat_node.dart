import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spritewidget/spritewidget.dart';

class FlatNode extends NodeWithSize {
  FlatNode({
    Size size = Size.zero,
    @required Color color,
    @required double length,
    bool reverse = false,
  })  : this.color = color,
        this.length = length,
        this.reverse = reverse,
        super(size);
  final Color color;
  final double length;
  final bool reverse;

  @override
  void paint(Canvas canvas) {
    // パスの作成
    final path = Path();
    path.moveTo(length * 2, 0);
    if (reverse) {
      path.lineTo(length * 3, -length);
      path.lineTo(0, -length);
      path.lineTo(0, 0);
    } else {
      path.lineTo(length * 3, length);
      path.lineTo(0, length);
      path.lineTo(0, 0);
    }

    // 図形の描画
    canvas.drawPath(
      path,
      Paint()..color = color,
    );
  }
}
