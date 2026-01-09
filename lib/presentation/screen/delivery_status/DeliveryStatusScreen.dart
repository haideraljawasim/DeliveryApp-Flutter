import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../components/AppScaffold.dart';
import '../../components/StatusRow.dart';
import '../../components/TopBar.dart';
import '../../components/VerticalDashedLine.dart';

class DeliveryStatusScreen extends StatelessWidget {
  const DeliveryStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      topBar: TopBar(
        title: "Delivery Status",
        onBackClick: () {
          context.pop();
        },
      ),
      body: Container(
        color: Color(0xFFFFFFFF),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                StatusRow(
                  text: "Order Taken",
                  color: const Color(0xFFFFFAEB),
                  image: const AssetImage('assets/images/paper.png'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 4),
                  child: VerticalDashedLine(height: 40),
                ),
                StatusRow(
                  text: "Order Is Being Prepared",
                  color: const Color(0xFFF1EFF6),
                  image: const AssetImage('assets/images/board.png'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 4),
                  child: VerticalDashedLine(height: 40),
                ),
                StatusRow(
                  text: "Order Is Being Delivered",
                  color: const Color(0xFFFEF0F0),
                  subTitle: "Your delivery agent is coming",
                  image: const AssetImage('assets/images/bike.png'),
                  trailingIcon: PhoneIconContainer(),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 4),
                  child: VerticalDashedLine(height: 18),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    width: double.infinity,
                    height: 128,
                    image: const AssetImage('assets/images/map_image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 4),
                  child: VerticalDashedLine(height: 40),
                ),
                StatusRow(
                  text: "Order Received",
                  color: const Color(0xFFF0FEF8),
                  image: const AssetImage('assets/images/check_mark.png'),
                  trailingIcon: LoadingAnimationWidget.waveDots(
                    color: Color(0xFFFFE3C9),
                    size: 32,
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
