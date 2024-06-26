import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/di/dependency_injection.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  setUpGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_,context) {

          return MaterialApp(
            initialRoute: Routes.launchesScreen,
            onGenerateRoute: AppRouter.generateRoute,
            title: 'Flutter Demo',

            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.backgroundColor,
              colorScheme: ColorScheme.fromSeed(seedColor: AppColors.lightBlueColor),
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
          );
        }

    );


  }
}