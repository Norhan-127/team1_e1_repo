import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/styles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Welcome to SpaceX',textAlign: TextAlign.center,style: TextStyles.sourceCode,),
        ],
      ),
    );
  }
}
