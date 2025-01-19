import 'package:flutter/material.dart';

class FrameLimit extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  /// FrameLimit is constrains its child to a maximum width of 500 and a minimum width of 300.
  /// It also centers the child and adds optional padding around it.
  ///
  /// Usage:
  /// Use FrameLimit when you want to ensure that a widget does not exceed a certain width,
  /// for example, in a form or a dialog where you want to maintain a consistent layout.
  const FrameLimit({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 500, minWidth: 300),
        child: SingleChildScrollView(padding: padding ?? const EdgeInsets.all(16), child: child),
      ),
    );
  }
}
