import 'package:flutter/material.dart' hide OutlinedButton;

import '../components/OutlinedButton.dart';
import '../components/PrimaryButton.dart';

class OrderCompletedScreen extends StatelessWidget {
  const OrderCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            const Text(
              "Congratulations!!!",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Color(0xFF27214D),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Your order have been taken and is being attended to",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xFF27214D),
              ),
            ),
            const SizedBox(height: 56),
            PrimaryButton(text: "Track Order", onClick: () {}),
            const SizedBox(height: 48),
            OutlinedButton(text: "Continue shopping", onClick: () {}),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
