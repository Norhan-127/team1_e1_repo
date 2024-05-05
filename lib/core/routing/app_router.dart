import 'package:flutter/material.dart';
import 'package:team1_e1/core/routing/routes.dart';
import 'package:team1_e1/features/capsules/ui/screens/capsules_screen.dart';
import 'package:team1_e1/features/home/screens/category_screen.dart';
import 'package:team1_e1/features/home/screens/layout_screen.dart';
import 'package:team1_e1/features/on_boarging/ui/screens/on_baording_screen.dart';
import 'package:team1_e1/features/rockets/data/models/rockets_response.dart';
import 'package:team1_e1/features/rockets/ui/screens/rocket_details_screen.dart';
import 'package:team1_e1/features/crew/ui/screen/crew_screen.dart';
import 'package:team1_e1/features/auth/login/ui/screens/before_login.dart';
import 'package:team1_e1/features/auth/login/ui/screens/login_screen.dart';
import 'package:team1_e1/features/auth/register/ui/screens/register_screen.dart';
import 'package:team1_e1/features/rockets/ui/screens/rockets_screen.dart';
import '../../features/capsules/data/models/capsules_response.dart';
import '../../features/capsules/ui/screens/one_capsule_details_screen.dart';
import '../../features/crew/logic/crew_cubit.dart';
import '../../features/dragon/data/models/dragon_response.dart';
import '../../features/dragon/ui/screens/dragon_details_screen.dart';
import '../../features/dragon/ui/screens/dragon_screen.dart';


class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.layOutScreen:
        return MaterialPageRoute(
          builder: (_) => const LayoutScreen(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const CategoryScreen(),
        );


      case Routes.rocketScreen:
        return MaterialPageRoute(
          builder: (_) => const RocketsScreen() ,
        );

      case Routes.rocketDetailsScreen:
        final rocket = settings.arguments as Rocket;
        return MaterialPageRoute(
          builder: (_) =>  RocketDetailsScreen(
            rocket: rocket,
          ),
        );
      case Routes.crewScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<CrewCubit>(),
              child: const CrewScreen()),
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
      case Routes.dragonScreen:
        return MaterialPageRoute(
            builder: (_) => const  DragonScreen());
      case Routes.dragonDetailsScreen:
        final dragon = settings.arguments as Dragon;
        return MaterialPageRoute(
        builder: (_) => DragonDetailsScreen(dragon: dragon),
        );
      case Routes.capsuleScreen:
        return MaterialPageRoute(
            builder: (_) => const CapsulesScreen());

      case Routes.capsuleDetailsScreen:
        final capsule = settings.arguments as Capsule;
        return MaterialPageRoute(
            builder: (_) => OneCapsuleDetailsScreen(
                  capsule: capsule,
                ));
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
