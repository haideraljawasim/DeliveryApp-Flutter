import 'package:flutter/material.dart';

import '../../../components/PrimaryButton.dart';
import '../../../util/AppStrings.dart';
import 'PriceRow.dart';

class CartTotal extends StatelessWidget {
  final double totalPrice;
  final VoidCallback onCheckoutClick;

  const CartTotal({
    super.key,
    required this.totalPrice,
    required this.onCheckoutClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      color: Colors.white,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  color: const Color(0xFF000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              PriceRow(
                price: totalPrice,
                fontSize: 24,
                moneyIcWidth: 20,
                moneyIcHeight: 16,
              ),
            ],
          ),
          const SizedBox(width: 24),
          Expanded(
            child: PrimaryButton(text: 'Checkout', onClick: onCheckoutClick),
          ),
        ],
      ),
    );
  }
}
