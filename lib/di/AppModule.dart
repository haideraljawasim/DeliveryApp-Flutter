import 'package:deliveryapp_flutter/domain/repository/CartRepository.dart';
import 'package:deliveryapp_flutter/presentation/screen/details_screen/DetailsScreenCubit.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../data/UserLocalDataSource.dart';
import '../data/repository/CartRepositoryImpl.dart';
import '../data/repository/MealRepositoryImpl.dart';
import '../data/repository/UserRepositoryImpl.dart';
import '../domain/repository/MealRepository.dart';
import '../domain/repository/UserRepository.dart';
import '../presentation/screen/authentication_screen/AuthenticationCubit.dart';
import '../presentation/screen/basket/MyBasketCubit.dart';
import '../presentation/screen/home_screen/HomeScreenCubit.dart';

final di = GetIt.instance;

Future<void> setupDI() async {
  await Supabase.initialize(
    url: '', // PLACE URL HERE
    anonKey: '', // PLACE ANON KEY HERE
  );
  await Hive.initFlutter();
  final userBox = await Hive.openBox('userBox');

  di.registerSingleton<SupabaseClient>(Supabase.instance.client);

  di.registerLazySingleton<MealRepository>(
    () => MealRepositoryImpl(di<SupabaseClient>()),
  );
  di.registerLazySingleton<CartRepository>(() => CartRepositoryImpl());

  di.registerFactory(
    () => HomeScreenCubit(di<MealRepository>(), di<UserRepository>()),
  );
  di.registerFactory(() => AuthenticationCubit(di<UserRepository>()));

  di.registerLazySingleton(() => UserLocalDataSource(userBox));
  di.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(di()));

  di.registerFactory(() => MyBasketCubit(di<CartRepository>()));

  di.registerFactory(
    () => DetailsScreenCubit(di<MealRepository>(), di<CartRepository>()),
  );
}
