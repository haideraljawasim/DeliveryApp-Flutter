import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key});

  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 183,
      width: 152,
      padding: EdgeInsetsGeometry.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Color(0xD202020), blurRadius: 60)],
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
              Image.network(
                "https://media.istockphoto.com/id/1190330112/photo/fried-pork-and-vegetables-on-white-background.jpg?s=612x612&w=0&k=20&c=TzvLLGGvPAmxhKJ6fz91UGek-zLNNCh4iq7MVWLnFwo=",
                width: 80,
                height: 80,
              ),
              SizedBox(height: 8),
              Text(
                "Honey lime combo",
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
                    "2,000",
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
    ));
  }
}
