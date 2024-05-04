import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:team1_e1/core/networking/web_services.dart';
import 'package:team1_e1/features/dragon/data/repo/dragon_repo.dart';
import 'package:team1_e1/features/dragon/logic/dragon_cubit.dart';
import 'package:team1_e1/features/rockets/data/repo/rockets_repo.dart';
import 'package:team1_e1/features/rockets/logic/rocket_cubit.dart';
import '../../features/capsules/data/repo/capsules_repo.dart';
import '../../features/capsules/logic/capsule_cubit.dart';
import '../networking/dio_factory.dart';


final getIt = GetIt.instance;
Future<void> setUpGetIt()async{
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<WebServices>(() => WebServices(dio));

  //---------------Dragons----------------------
  getIt.registerLazySingleton<DragonRepo>(() => DragonRepo(getIt()));
  getIt.registerLazySingleton<DragonCubit>(() => DragonCubit(getIt()));


  //---------------Capsules----------------------
  getIt.registerLazySingleton<CapsuleRepo>(() => CapsuleRepo(getIt()));
  getIt.registerLazySingleton<CapsuleCubit>(() => CapsuleCubit(getIt()));


  //---------------Rockets----------------------
  getIt.registerLazySingleton<RocketRepo>(() => RocketRepo(getIt()));
  getIt.registerLazySingleton<RocketCubit>(() => RocketCubit(getIt()));


}