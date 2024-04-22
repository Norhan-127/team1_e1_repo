import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/styles.dart';

import '../../../../core/routing/routes.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3) , (){
      Navigator.pushReplacementNamed(context, Routes.loginScreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Welcome to SpaceX',textAlign: TextAlign.center,style: TextStyles.sourceCode20Black,),
        ],
      ),
    );
  }
}
