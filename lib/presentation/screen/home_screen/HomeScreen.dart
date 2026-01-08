import 'package:deliveryapp_flutter/di/AppModule.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/HomeScreenContent.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/HomeScreenCubit.dart';
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
