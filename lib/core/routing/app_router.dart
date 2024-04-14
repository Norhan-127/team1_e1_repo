import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/core/routing/routes.dart';
import 'package:team1_e1/features/capsules/ui/screens/one_capsule_details_screen.dart';
import '../../features/capsules/logic/capsule_cubit.dart';
import '../../features/capsules/ui/screens/capsules_screen.dart';
import '../../features/on_boarging/ui/screens/on_baording_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.capsuleScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<CapsuleCubit>(),
              child: const CapsulesScreen(),
            )
        );
      case Routes.capsuleDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<CapsuleCubit>(),
              child: const OneCapsuleDetailsScreen(),
            )
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