import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackButton extends StatelessWidget {
  final VoidCallback onClick;

  const BackButton({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: InkWell(
        onTap: onClick,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/ic_back.svg'),
              const SizedBox(width: 4),
              Text(
                "Go Back",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF27214D),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
