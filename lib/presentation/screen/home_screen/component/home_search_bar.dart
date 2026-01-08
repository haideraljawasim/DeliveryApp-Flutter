import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.directional(start: 24, end: 24, bottom: 40),
      child: Row(
        children: [
          Expanded(
            child: SearchBar(
              padding: WidgetStatePropertyAll(
                EdgeInsetsGeometry.directional(start: 24, top: 12, bottom: 12),
              ),
              hintText: 'Search for fruit salad combos',
              hintStyle: WidgetStatePropertyAll(
                TextStyle(color: Color(0xFF86869E), fontSize: 14),
              ),
              leading: SvgPicture.asset(
                width: 16,
                height: 16,
                "assets/icons/ic_search.svg",
              ),
              backgroundColor: WidgetStatePropertyAll(Color(0xFFF3F4F9)),
              elevation: WidgetStatePropertyAll(0.0),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16),
                ),
              ),
            ),
          ),

          SizedBox(width: 16),

          SvgPicture.asset(
            width: 26,
            height: 17,
            "assets/icons/ic_filter_horizontal.svg",
          ),
        ],
      ),
    );
  }
}
