import 'package:flutter/cupertino.dart';

import 'BasicButton.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;

  const OutlineButton({super.key, required this.onClick, required this.text});

  @override
  Widget build(BuildContext context) {
    return BasicButton(
      onClick: onClick,
      text: text,
      borderColor: Color(0xFFFFA451),
      backgroundColor: Color(0xFFFFFFFF),
      textColor: Color(0xFFFFA451),
    );
  }
}
