import 'package:flutter/material.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class UpperPage extends StatelessWidget {
  const UpperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Explore things\nbeyond the\nplanet',
          style: TextStyles.poppins28BoldWhite,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.beforeLoginScreen);
            },
            child: Text(
              'Skip',
              style: TextStyles.exo14White,
            )),
      ],
    );
  }
}
