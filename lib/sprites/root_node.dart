import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spritewidget/spritewidget.dart';
import 'package:spritewidget_example/sprites/base_node.dart';

class RootNode extends NodeWithSize {
  RootNode(Size size) : super(size) {
    final move1 = MotionTween<Offset>(
      (animation) => baseNode.position = animation,
      Offset(size.width / 2, size.height),
      Offset(size.width / 2, size.height / 3),
      1.0,
    );
    final move2 = MotionTween<Offset>(
      (animation) => baseNode.position = animation,
      Offset(size.width / 2, size.height / 3),
      Offset(size.width / 2, size.height),
      0.75,
    );
    final rotate1 = MotionTween<double>(
      (animation) => baseNode.rotation = animation,
      0,
      -45.0,
      1.0,
    );
    final rotate2 = MotionTween<double>(
      (animation) => baseNode.rotation = animation,
      -45.0,
      0,
      0.75,
    );
    final delay = MotionDelay(2.0);

    final sequence = MotionSequence([
      move1,
      rotate1,
      delay,
      rotate2,
      move2,
    ]);

    // スプライトにモーションを追加
    baseNode.motions.run(MotionRepeatForever(sequence));

    // 子スプライトを追加
    this.addChild(baseNode);
  }
  final baseNode = BaseNode(Size.zero);
}
