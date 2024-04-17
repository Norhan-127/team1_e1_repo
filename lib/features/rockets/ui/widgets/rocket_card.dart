import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/rockets/ui/screens/rocket_details.dart';


class RocketCard extends StatelessWidget {
  const RocketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0,vertical: 18.0),
      child: Container(
        height: 265,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGrey),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('assets/images/rocket_details.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const RocketDetails(),),);
                },
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Falcon Heavy',style: TextStyles.MeduimWhite,),
                    Text(
                      'The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.SmallWhite),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
