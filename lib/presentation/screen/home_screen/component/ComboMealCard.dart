import 'package:deliveryapp_flutter/domain/entity/Meal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComboMealCard extends StatelessWidget {
  final Meal meal;
  final void Function(int) onMealClicked;

  const ComboMealCard({super.key, required this.meal, required this.onMealClicked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => { onMealClicked(meal.id) },
      child: Container(
        height: 183,
        width: 152,
        padding: EdgeInsetsGeometry.symmetric(vertical: 16, horizontal: 16),
        margin: EdgeInsetsGeometry.directional(start: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(color: Color(0x1A000000), blurRadius: 28)],
          color: Color(0xFFFFFFFF),
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
                  "assets/icons/ic_heart.svg",
                ),
              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 6),
                Image.network(meal.imageUrl, width: 80, height: 80),
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
                      "assets/icons/ic_money.svg",
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
                      "assets/icons/ic_add.svg",
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
