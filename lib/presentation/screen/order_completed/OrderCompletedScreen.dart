import 'package:flutter/material.dart' hide OutlinedButton;
import 'package:go_router/go_router.dart';

import '../components/OutlinedButton.dart';
import '../components/PrimaryButton.dart';

class OrderCompletedScreen extends StatelessWidget {
  const OrderCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 116),
                const Image(
                  image: AssetImage('assets/images/check_mark.png'),
                  height: 164,
                  width: 164,
                ),
                const SizedBox(height: 56),
                Text(
                  "Congratulations!!!",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF27214D),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Your order have been taken and is being attended to",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF27214D),
                  ),
                ),
                const SizedBox(height: 56),
                PrimaryButton(
                  text: "Track Order",
                  onClick: () {
                    context.go('/order_completed/delivery_status');
                  },
                ),
                const SizedBox(height: 48),
                OutlinedButton(text: "Continue shopping", onClick: () {
                  context.go('/');
                }),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
