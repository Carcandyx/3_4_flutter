import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  final List<Widget> children;

  const CustomStack({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        clipBehavior: Clip.hardEdge,
        children: children,
      ),
    );
  }
}
