import 'package:flutter/material.dart';
import 'package:team1_e1/core/shared_widgets/background_container.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';

class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: Center(
              child: Text(
        'Launches Screeen ',
        style: TextStyles.roboto36WhiteFontWeight700,
      ))),
    );
  }
}
