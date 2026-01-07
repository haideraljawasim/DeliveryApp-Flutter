import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  const BasicButton({
    super.key,
    required this.onClick,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor ?? Color(0xFFFFA451),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: borderColor ?? Color(0xFFFFA451), width: 1),
      ),
      child: InkWell(
        onTap: onClick,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: textColor ?? Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
