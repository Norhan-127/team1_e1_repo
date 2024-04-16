import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/features/on_boarging/ui/screens/widgets/on_boarding_view_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black.withOpacity(0.4),
      body: const OnBoardingViewBody(),
    );
  }
}




// curve: Curves.fastEaseInToSlowEaseOut,
