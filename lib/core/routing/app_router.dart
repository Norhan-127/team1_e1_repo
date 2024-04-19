import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/core/routing/routes.dart';
import 'package:team1_e1/features/on_boarging/ui/logic/on_boarding_cubit.dart';
import 'package:team1_e1/injection_container.dart';
import '../../features/on_boarging/ui/screens/on_baording_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<OnBoardingCurrentPageCubit>(
              create: (context) => serviceLocator<OnBoardingCurrentPageCubit>(),
              child: const OnBoardingScreen(),),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
