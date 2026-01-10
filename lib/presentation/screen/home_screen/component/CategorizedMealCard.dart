import 'dart:math';

import 'package:deliveryapp_flutter/domain/entity/Meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../util/AppStrings.dart';

class CategorizedMealCard extends StatelessWidget {
  final Meal meal;
  final void Function(int) onMealClicked;

  const CategorizedMealCard({
    super.key,
    required this.meal,
    required this.onMealClicked,
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> backgroundColors = [
      Color(0xFFFFFAEB),
      Color(0xFFFEF0F0),
      Color(0xFFF1EFF6),
      Color(0xFFEBEBF4),
      Color(0xFFEBF4EB),
      Color(0xFFFEF0FD),
    ];

    return GestureDetector(
      onTap: () => {onMealClicked(meal.id)},
      child: Container(
        height: 150,
        width: 140,
        padding: EdgeInsetsGeometry.symmetric(vertical: 16, horizontal: 16),
        margin: EdgeInsetsGeometry.directional(start: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Color(0x1A000000), blurRadius: 28)],
          color: backgroundColors[Random().nextInt(backgroundColors.length)],
        ),
        child: Stack(
          alignment: AlignmentGeometry.topCenter,
          children: [
            Row(
              children: [
                Spacer(),
                SvgPicture.asset(
                  width: 16,
                  height: 16,
                  Assets.icHeart,
                ),
              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 6),
                Image.network(meal.imageUrl, width: 64, height: 64),
                SizedBox(height: 8),
                Text(
                  meal.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF27214D),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    SvgPicture.asset(
                      width: 16,
                      height: 13,
                      Assets.icMoney,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "${meal.price}",
                      style: TextStyle(
                        color: Color(0xFFF08626),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      width: 24,
                      height: 24,
                      Assets.icAdd,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
