import 'package:deliveryapp_flutter/presentation/util/AppStrings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MealPriceRow extends StatelessWidget{
  final int count;
  final double price;

  const MealPriceRow({super.key, required this.count, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => {},
          child: SvgPicture.asset(
            width: 32,
            height: 32,
            Assets.icMinus,
            color: Color(0xFF27214D),
          ),
        ),
        SizedBox(width: 24,),
        Text(
          "$count",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Color(0xFF27214D),
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 24,),
        InkWell(
          onTap: () => {},
          child: SvgPicture.asset(
            width: 32,
            height: 32,
            Assets.icAdd,
          ),
        ),
        Spacer(),

        SvgPicture.asset(
          width: 20,
          height: 16,
          Assets.icMoney,
          color: Color(0xFF27214D),
        ),
        SizedBox(width: 5,),
        Text(
          "$price",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Color(0xFF27214D),
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

}