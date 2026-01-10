import 'package:flutter/material.dart';

import 'TopBar.dart';

class AppScaffold extends StatelessWidget {
  final TopBar topBar;
  final Widget body;
  final Color backgroundColor;

  const AppScaffold({
    super.key,
    required this.topBar,
    required this.body,
    this.backgroundColor = const Color(0xFFFFA451),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          SafeArea(bottom: false, left: false, right: false, child: topBar),
          Expanded(child: body),
        ],
      ),
    );
  }
}
