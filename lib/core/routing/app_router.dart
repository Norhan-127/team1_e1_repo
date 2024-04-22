import 'package:flutter/material.dart';
import 'package:team1_e1/core/routing/routes.dart';
import 'package:team1_e1/features/on_boarging/ui/screens/on_baording_screen.dart';
import 'package:team1_e1/features/rockets/ui/screens/rocket_details_screen.dart';
import 'package:team1_e1/features/crew/ui/screen/crew_screen.dart';
import 'package:team1_e1/features/auth/login/ui/screens/before_login.dart';
import 'package:team1_e1/features/auth/login/ui/screens/login_screen.dart';
import 'package:team1_e1/features/auth/register/ui/screens/register_screen.dart';

import '../../features/capsules/ui/screens/capsules_screen.dart';
import '../../features/dragon/ui/screens/dragon_screen.dart';
import '../../features/launches/ui/screens/launches_screen.dart';


class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.rocketDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const RocketDetailsScreen(),);

        case Routes.crewScreen:
        return MaterialPageRoute(
          builder: (_) => const CrewScreen(),
        );
      case Routes.beforeLoginScreen:
        return MaterialPageRoute(
          builder: (_) => const BeforeLoginScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (_) => const RegisterScreen(),

        );
      case Routes.capsuleScreen:
        return MaterialPageRoute(
          builder: (_) => const CapsuleScreen(),

        );
      case Routes.launchesScreen:
        return MaterialPageRoute(
          builder: (_) => const LaunchesScreen(),

        );
      case Routes.dragonScreen:
        return MaterialPageRoute(
          builder: (_) => const DragonScreen(),

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