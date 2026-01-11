import 'package:deliveryapp_flutter/presentation/components/PrimaryButton.dart';
import 'package:deliveryapp_flutter/presentation/util/AppStrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MealFavouriteRow extends StatelessWidget {
  const MealFavouriteRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: Color(0xFFFFF7F0),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: SizedBox(child: SvgPicture.asset(width: 24, height: 21, Assets.icHeart),),
          ),
        ),
        Spacer(),
        PrimaryButton(onClick: () => {}, text: "Add to basket")
      ],
    );
  }
}
