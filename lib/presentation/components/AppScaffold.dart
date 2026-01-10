import 'package:flutter/material.dart';

import 'TopBar.dart';

class AppScaffold extends StatelessWidget {
  final TopBar? topBar;
  final Widget body;
  final Color backgroundColor;
  final Color contentColor;
  final Widget? bottomBar;
  final double bottomBarHeight;

  const AppScaffold({
    super.key,
    required this.body,
    this.topBar,
    this.bottomBar,
    this.backgroundColor = const Color(0xFFFFA451),
    this.contentColor = Colors.white,
    this.bottomBarHeight = 92,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Column(
          children: [
            SafeArea(
              bottom: false,
              left: false,
              right: false,
              child: topBar ?? const SizedBox(),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: contentColor,
                      padding: EdgeInsets.only(
                        bottom: bottomBar != null ? bottomBarHeight : 0,
                      ),
                      child: body,
                    ),
                  ),

                  if (bottomBar != null)
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: SafeArea(
                        bottom: true,
                        left: false,
                        right: false,
                        top: false,
                        child: SizedBox(
                          height: bottomBarHeight,
                          child: bottomBar!,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
