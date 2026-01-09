import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../data/repository/MealRepositoryImpl.dart';
import '../presentation/screen/home_screen/HomeScreenCubit.dart';

final di = GetIt.instance;

Future<void> setupDI() async {
  await Supabase.initialize(
      url: 'https://tuewedzbnrdivwtgfclq.supabase.co',
      anonKey: 'sb_publishable_KiV48wHO2SKIz_VsxLayow_uyZCZnTU'
  );

  di.registerSingleton<SupabaseClient>(Supabase.instance.client);

  di.registerLazySingleton<MealRepositoryImpl>(
        () => MealRepositoryImpl(di<SupabaseClient>()),
  );

  di.registerFactory(
        () => HomeScreenCubit(di<MealRepositoryImpl>()),
  );
}
