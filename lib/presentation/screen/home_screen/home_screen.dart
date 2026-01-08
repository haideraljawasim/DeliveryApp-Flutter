import 'package:deliveryapp_flutter/di/AppModule.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/home_screen_content.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/home_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<HomeScreenCubit>()..loadData(),
      child: HomeScreenContent(),
    );
  }
}
