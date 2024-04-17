import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/styles.dart';

class RocketInformation extends StatelessWidget {
  const RocketInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        const Image(image:AssetImage('assets/images/rocket_details.png'), ),
        const SizedBox(height: 30),
        Text('Falcon 9 is a two-stage rocket designed and manufactured by SpaceX for the reliable and safe transport of satellites and the Dragon spacecraft into orbit.',style: TextStyles.NormalWhite,),
        const SizedBox(height: 40,),
        const Divider(
          height: 0.5,
          color: Colors.white24,
        ),
        const SizedBox(height: 40),
        Text('company: SpaceX' , style: TextStyles.MeduimWhite,),
        const SizedBox(height: 30),
        Text('Type: rocket' , style: TextStyles.MeduimWhite,),
        const SizedBox(height: 30),
        Text('country: United States' , style: TextStyles.MeduimWhite,),
        const SizedBox(height: 30),
        Text('first_flight: 2010-06-04' , style: TextStyles.MeduimWhite,),
        const SizedBox(height: 30),
        Text('cost_per_launch: 50000000' , style: TextStyles.MeduimWhite,),
        const SizedBox(height: 30),
      ],
    );
  }
}
