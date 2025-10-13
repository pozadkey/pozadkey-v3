import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget child;
  final BoxConstraints? constraints;
  const Responsive({super.key, required this.child, this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: ConstrainedBox(
          constraints: constraints ?? const BoxConstraints(maxWidth: 900),
          child: Padding(padding: const EdgeInsets.all(15.0), child: child),
        ),
      ),
    );
  }
}
