import 'package:flutter/material.dart';
import 'package:team1_e1/core/routing/routes.dart';
import 'package:team1_e1/features/crew/ui/screen/crew_screen.dart';
import '../../features/on_boarging/ui/screens/on_baording_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
        case Routes.crewScreen:
        return MaterialPageRoute(
          builder: (_) => const CrewScreen(),
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