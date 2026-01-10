import 'package:deliveryapp_flutter/domain/entity/Meal.dart';
import 'package:deliveryapp_flutter/presentation/components/BackButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class MealCard extends StatelessWidget {
  final Meal meal;

  const MealCard({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xFFFFA451)),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.directional(top: 20, start: 24),
            child: Row(
              children: [
                SizedBox(
                  width: 90,
                  child: BackButton(
                    onClick: () {
                      context.pop();
                    },
                  ),
                ),
                Spacer(),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.directional(top: 62, bottom: 32),
            child: Image.network(meal.imageUrl, width: 176, height: 176),
          ),
        ],
      ),
    );
  }
}
