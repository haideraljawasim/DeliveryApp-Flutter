import 'package:flutter/cupertino.dart';

import 'BasicButton.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;

  const PrimaryButton({super.key, required this.onClick, required this.text});

  @override
  Widget build(BuildContext context) {
    return BasicButton(text: text, onClick: onClick);
  }
}
