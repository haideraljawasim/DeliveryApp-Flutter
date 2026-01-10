import 'package:deliveryapp_flutter/presentation/screen/details_screen/DetailsScreenContent.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/DetailsScreenCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/AppModule.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<DetailsScreenCubit>()..loadData(),
      child: DetailsScreenContent(),
    );
  }
}
