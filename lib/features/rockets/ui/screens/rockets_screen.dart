import 'package:flutter/material.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';
import 'package:team1_e1/features/rockets/ui/widgets/rocket_card.dart';

import '../../../../core/shared_widgets/default_bottom_navigation_bar.dart';


class RocketsScreen extends StatelessWidget {
  const RocketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/space_Galaxy_background.png',
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              DefaultAppBar(
                icon: Icons.arrow_back,
                function: () => Navigator.pop(context),
                text: 'SpaceX Rockets',
              ),
              const SizedBox(height: 20),
              const Divider(
                height: 0.5,
                color: Colors.white24,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return const RocketCard();
                  },),
              ),
              const DefaultBottomNavigationBar()
            ],
          ),
        ),
      ),
    );
  }
}
