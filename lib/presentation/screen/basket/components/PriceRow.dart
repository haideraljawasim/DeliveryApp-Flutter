import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/AppStrings.dart';

class PriceRow extends StatelessWidget {
  final double price;
  final double moneyIcWidth;

  final double moneyIcHeight;

  final double fontSize;

  const PriceRow({
    super.key,
    required this.price,
    this.moneyIcWidth = 16,
    this.moneyIcHeight = 13,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.icMoney,
          width: moneyIcWidth,
          height: moneyIcHeight,
          colorFilter: ColorFilter.mode(
            const Color(0xFF27214D),
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          '$price',
          style: TextStyle(
            fontFamily: AppStrings.fontFamily,
            color: const Color(0xFF27214D),
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
