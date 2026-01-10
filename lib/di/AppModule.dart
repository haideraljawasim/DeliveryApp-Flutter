import 'package:deliveryapp_flutter/presentation/screen/details_screen/DetailsScreenCubit.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../data/repository/MealRepositoryImpl.dart';
import '../presentation/screen/home_screen/HomeScreenCubit.dart';

final di = GetIt.instance;

Future<void> setupDI() async {
  await Supabase.initialize(
    url: '', // PLACE URL HERE
    anonKey: '', // PLACE ANON KEY HERE
  );

  di.registerSingleton<SupabaseClient>(Supabase.instance.client);

  di.registerLazySingleton<MealRepositoryImpl>(
    () => MealRepositoryImpl(di<SupabaseClient>()),
  );

  di.registerFactory(
        () => HomeScreenCubit(di<MealRepositoryImpl>()),
  );

  di.registerFactory(
        () => DetailsScreenCubit(di<MealRepositoryImpl>()),
  );
}
