import 'package:team1_e1/core/di/dependency_injection.dart';
import 'package:team1_e1/core/routing/routes.dart';
import 'package:team1_e1/features/dragon/logic/dragon_cubit.dart';
import 'package:team1_e1/features/on_boarging/ui/screens/on_baording_screen.dart';
import 'package:team1_e1/features/rockets/ui/screens/rocket_details_screen.dart';
import 'package:team1_e1/features/crew/ui/screen/crew_screen.dart';
import 'package:team1_e1/features/auth/login/ui/screens/before_login.dart';
import 'package:team1_e1/features/auth/login/ui/screens/login_screen.dart';
import 'package:team1_e1/features/auth/register/ui/screens/register_screen.dart';
import '../../features/dragon/ui/screens/dragon_details_screen.dart';
import '../../features/dragon/ui/screens/dragon_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/features/capsules/ui/screens/one_capsule_details_screen.dart';
import '../../features/capsules/data/models/capsule.dart';
import '../../features/capsules/logic/capsule_cubit.dart';
import '../../features/capsules/ui/screens/capsules_screen.dart';
import '../../features/on_boarging/ui/screens/on_baording_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.rocketDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const RocketDetailsScreen(),
        );
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
      case Routes.dragonScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<DragonCubit>(),
              child: const DragonScreen(),
            )

        );
      case Routes.dragonDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const DragonDetailsScreen(),
      case Routes.capsuleScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<CapsuleCubit>(),
              child: const CapsulesScreen(),
            )
        );
      case Routes.capsuleDetailsScreen:
        final capsule = settings.arguments as Capsule;
        return MaterialPageRoute(
            builder: (_) =>  OneCapsuleDetailsScreen(capsule: capsule,)
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
