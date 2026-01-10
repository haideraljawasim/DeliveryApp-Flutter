import 'package:flutter/material.dart';

class VerticalDashedLine extends StatelessWidget {
  final double height;
  final double dashHeight;
  final double dashSpace;
  final Color color;
  final double width;

  const VerticalDashedLine({
    super.key,
    required this.height,
    this.dashHeight = 3.5,
    this.dashSpace = 3.5,
    this.color = const Color(0xFFFFA451),
    this.width = 2,
  });

  @override
  Widget build(BuildContext context) {
    final dashCount = (height / (dashHeight + dashSpace)).floor();

    return SizedBox(
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(dashCount, (_) {
          return SizedBox(
            height: dashHeight,
            width: width,
            child: DecoratedBox(decoration: BoxDecoration(color: color)),
          );
        }),
      ),
    );
  }
}
