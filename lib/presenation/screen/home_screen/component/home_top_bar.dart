import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.directional(start: 24, end: 24, top: 26, bottom: 11),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          width: 22,
          height: 11,
          "assets/icons/ic_two_lines.svg",
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              width: 24,
              height: 24,
              "assets/icons/ic_shopping_card.svg",
            ),
            SizedBox(height: 3),
            Text(
              "My basket",
              style: TextStyle(
                color: Color(0xFF27214D),
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    ),);
  }
}
