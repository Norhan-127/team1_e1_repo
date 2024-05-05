
import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Screen' , style:
    TextStyle(
        color: AppColors.whiteColor,
        fontSize: 26
    ),));
  }
}
