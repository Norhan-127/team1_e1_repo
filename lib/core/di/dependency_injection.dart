import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:team1_e1/core/networking/web_services.dart';
import 'package:team1_e1/features/capsules/data/repo/capsules_repo.dart';
import 'package:team1_e1/features/capsules/logic/capsule_cubit.dart';

import '../networking/dio_factory.dart';


final getIt = GetIt.instance;
Future<void> setUpGetIt()async{
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<WebServices>(() => WebServices(dio));

  //---------------Capsules----------------------
  getIt.registerLazySingleton<CapsuleRepo>(() => CapsuleRepo(getIt()));
  getIt.registerLazySingleton<CapsuleCubit>(() => CapsuleCubit(getIt()));


}