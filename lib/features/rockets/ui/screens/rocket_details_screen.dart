import 'package:flutter/material.dart';
import 'package:team1_e1/features/rockets/data/models/rockets_response.dart';
import 'package:team1_e1/features/rockets/ui/widgets/rocket_informations.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';


class RocketDetailsScreen extends StatelessWidget {
  Rocket rocket;
   RocketDetailsScreen({super.key , required this.rocket });


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
                      'assets/images/app_background.png',
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
                    text: '${rocket.name}',
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 0.5,
                    color: Colors.white24,
                  ),
                  const SizedBox(height: 30),
                   RocketInformation(
                     description: rocket.description,
                     image: rocket.flickrImages,
                     type: rocket.type,
                     boosters: rocket.boosters,
                     company: rocket.company,
                     country: rocket.country,
                     stages: rocket.stages,
                   )
                ]
              ),
            ),
          ),
      ),
    );
  }
}
