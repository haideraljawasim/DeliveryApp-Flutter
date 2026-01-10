import 'package:deliveryapp_flutter/presentation/screen/details_screen/DetailsScreenContent.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/DetailsScreenCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/AppModule.dart';

class DetailsScreen extends StatelessWidget {
  final String mealId;
  const DetailsScreen({super.key, required this.mealId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<DetailsScreenCubit>()..loadData(mealId),
      child: DetailsScreenContent(),
    );
  }
}
