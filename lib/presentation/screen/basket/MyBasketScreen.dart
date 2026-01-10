import 'package:deliveryapp_flutter/presentation/components/AppScaffold.dart';
import 'package:deliveryapp_flutter/presentation/components/StatusRow.dart';
import 'package:deliveryapp_flutter/presentation/navigation/GoRouter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../di/AppModule.dart';
import '../../../domain/entity/CartItem.dart';
import '../../components/TopBar.dart';
import 'MyBasketCubit.dart';
import 'MyBasketState.dart';
import 'components/CartTotal.dart';
import 'components/PriceRow.dart';

class MyBasketScreen extends StatelessWidget {
  const MyBasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<MyBasketCubit>()..loadData(),
      child: BlocBuilder<MyBasketCubit, MyBasketState>(
        builder: (context, state) {
          return AppScaffold(
            topBar: TopBar(
              title: 'My Basket',
              onBackClick: () => context.pop(),
            ),

            bottomBar: state.cartItems.isNotEmpty
                ? CartTotal(
                    totalPrice: state.totalCartPrice,
                    onCheckoutClick: () {
                      context.push(AppRouts.orderCompleted);
                    },
                  )
                : null,

            body: state.isLoading
                ? Center(
                    child: CircularProgressIndicator(color: Color(0xFFFFA451)),
                  )
                : CartItemsList(cartItems: state.cartItems),
          );
        },
      ),
    );
  }
}

class CartItemsList extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartItemsList({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    final List<Color> backgroundColors = [
      Color(0xFFFFFAEB),
      Color(0xFFFEF0F0),
      Color(0xFFF1EFF6),
      Color(0xFFEBEBF4),
      Color(0xFFEBF4EB),
      Color(0xFFFEF0FD),
    ];
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 40),
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        final item = cartItems[index];

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: StatusRow(
                text: item.name,
                subTitle: '${item.count} packs',
                color: backgroundColors[index % backgroundColors.length],
                image: AssetImage(item.imageUrl),
                trailingIcon: PriceRow(price: item.price),
              ),
            ),
            if (index != cartItems.length - 1) ...[
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 1,
                color: const Color(0xFFF4F4F4),
              ),
              const SizedBox(height: 32),
            ],
          ],
        );
      },
    );
  }
}
