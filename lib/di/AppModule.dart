import 'package:deliveryapp_flutter/presentation/screen/home_screen/home_screen_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../data/repository/MealRepositoryImpl.dart';

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
}
