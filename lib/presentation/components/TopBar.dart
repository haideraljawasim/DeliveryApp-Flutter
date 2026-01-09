import 'package:deliveryapp_flutter/presentation/components/BackButton.dart';
import 'package:flutter/material.dart' hide BackButton;

class TopBar extends StatelessWidget {
  final String title;
  final VoidCallback onBackClick;

  const TopBar({super.key, required this.title, required this.onBackClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
      decoration: BoxDecoration(color: const Color(0xFFFFA451)),
      child: Row(
        children: [
          BackButton(onClick: onBackClick),
          const SizedBox(width: 14),
          Text(
            title,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
