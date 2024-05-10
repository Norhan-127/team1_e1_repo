
import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Screen' , style:
    TextStyle(
        color: AppColors.whiteColor,
        fontSize: 26
    ),));
  }
}
