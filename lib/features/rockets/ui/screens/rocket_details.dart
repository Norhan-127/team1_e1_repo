import 'package:flutter/material.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';
import 'package:team1_e1/features/rockets/ui/widgets/rocket_informations.dart';

class RocketDetails extends StatelessWidget {
  const RocketDetails({super.key});

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
                    fit: BoxFit.cover,),),
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0 , right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  DefaultAppBar(
                    icon: Icons.arrow_back,
                    function: () => Navigator.pop(context),
                    text: 'Falcon Heavy',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    height: 0.5,
                    color: Colors.white24,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const RocketInformation()
                ]
              ),
            ),
          ),
      ),
    );
  }
}
