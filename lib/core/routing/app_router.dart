import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/core/routing/routes.dart';
import 'package:team1_e1/features/capsules/ui/screens/capsules_screen.dart';
import 'package:team1_e1/features/home/screens/home_screen.dart';
import 'package:team1_e1/features/home/screens/layout_screen.dart';
import 'package:team1_e1/features/dragon/logic/dragon_cubit.dart';
import 'package:team1_e1/features/launches/data/models/launches_response.dart';
import 'package:team1_e1/features/launches/logic/launches_cubit.dart';
import 'package:team1_e1/features/launches/ui/screens/launches_details_screen.dart';
import 'package:team1_e1/features/launches/ui/screens/launches_screen.dart';
import 'package:team1_e1/features/on_boarging/ui/screens/on_baording_screen.dart';
import 'package:team1_e1/features/rockets/data/models/rockets_response.dart';
import 'package:team1_e1/features/rockets/ui/screens/rocket_details_screen.dart';
import 'package:team1_e1/features/crew/ui/screen/crew_screen.dart';
import 'package:team1_e1/features/auth/login/ui/screens/login_screen.dart';
import 'package:team1_e1/features/auth/register/ui/screens/register_screen.dart';
import 'package:team1_e1/features/rockets/ui/screens/rockets_screen.dart';
import '../../features/capsules/data/models/capsules_response.dart';
import '../../features/capsules/logic/capsule_cubit.dart';
import '../../features/capsules/ui/screens/one_capsule_details_screen.dart';
import '../../features/crew/logic/crew_cubit.dart';
import '../../features/dragon/data/models/dragon_response.dart';
import '../../features/dragon/logic/dragon_cubit.dart';
import '../../features/dragon/ui/screens/dragon_details_screen.dart';
import '../../features/dragon/ui/screens/dragon_screen.dart';
import '../../features/on_boarding/ui/screens/on_baording_screen.dart';
import '../../features/profile/ui/screens/profile_screen.dart';
import '../di/dependency_injection.dart';


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
          builder: (_) => const HomeScreen(),
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
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      case Routes.dragonScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<DragonCubit>(),
              child: const DragonScreen(),
            ));
      case Routes.dragonDetailsScreen:
        final dragon = settings.arguments as Dragon;
        return MaterialPageRoute(
        builder: (_) => DragonDetailsScreen(dragon: dragon),
        );
      case Routes.capsuleScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<CapsuleCubit>(),
              child: const CapsulesScreen(),
            ));

      case Routes.capsuleDetailsScreen:
        final capsule = settings.arguments as Capsule;
        return MaterialPageRoute(
            builder: (_) => OneCapsuleDetailsScreen(
                  capsule: capsule,
                ));
      case Routes.launchesScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<LaunchesCubit>(),
              child: const LaunchesScreen(),
            ));

      case Routes.launchesDetailsScreen:
        final launchesResponse = settings.arguments as LaunchesResponse;
        return MaterialPageRoute(
            builder: (_) => LaunchesDetailsScreen(
              launchesResponse: launchesResponse,
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
