import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatusRow extends StatelessWidget {
  final String text;
  final Color color;
  final AssetImage image;
  final Widget? trailingIcon;
  final String? subTitle;

  const StatusRow({
    super.key,
    required this.text,
    required this.color,
    required this.image,
    this.trailingIcon,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Image(image: image, width: 56, height: 56)),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Color(0xFF000000),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (subTitle != null) ...[
              const SizedBox(height: 4),
              Text(
                subTitle!,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Color(0xFF000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ],
        ),
        Spacer(),
        trailingIcon ??
            SvgPicture.asset(
              'assets/icons/ic_check.svg',
              width: 24,
              height: 24,
            ),
      ],
    );
  }
}

class PhoneIconContainer extends StatelessWidget {
  const PhoneIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFFFFA451),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/icons/ic_phone.svg',
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
