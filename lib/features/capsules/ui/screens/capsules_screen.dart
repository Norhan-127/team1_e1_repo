import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/default_bottom_navigation_bar.dart';

class CapsuleScreen extends StatelessWidget {
  const CapsuleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/space_Galaxy_background.png',
                ),
                fit: BoxFit.cover)),
        child: const Column(
          children: [Expanded(child: DefaultBottomNavigationBar())],
        ),
      ),
    );
  }
}
