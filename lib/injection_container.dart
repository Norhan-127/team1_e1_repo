import 'package:get_it/get_it.dart';
import 'features/on_boarging/ui/logic/on_boarding_cubit.dart';

final serviceLocator=GetIt.instance;
void setup() {
  serviceLocator.registerLazySingleton(() => OnBoardingCurrentPageCubit());
}