import 'package:deliveryapp_flutter/presentation/components/AppScaffold.dart';
import 'package:deliveryapp_flutter/presentation/components/OutlinedButton.dart';
import 'package:flutter/material.dart' hide OutlinedButton;
import 'package:go_router/go_router.dart';

import '../../components/PrimaryButton.dart';
import '../../navigation/GoRouter.dart';
import '../../util/AppStrings.dart';

class OrderCompletedScreen extends StatelessWidget {
  const OrderCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 116),
              const Image(
                image: AssetImage(Assets.checkMarkImage),
                height: 164,
                width: 164,
              ),
              const SizedBox(height: 56),
              Text(
                "Congratulations!!!",
                style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF27214D),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Your order have been taken and is being attended to",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF27214D),
                ),
              ),
              const SizedBox(height: 56),
              PrimaryButton(
                text: "Track Order",
                onClick: () {
                  context.push(AppRouts.deliveryStatus);
                },
              ),
              const SizedBox(height: 48),
              OutlinedButton(
                text: "Continue shopping",
                onClick: () {
                  context.go(AppRouts.home);
                },
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
