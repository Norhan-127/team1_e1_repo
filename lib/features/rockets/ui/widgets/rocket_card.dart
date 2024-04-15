import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/font_weight_helper.dart';


class RocketCard extends StatelessWidget {
  const RocketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0,vertical: 18.0),
      child: Container(
        height: 265,
        // width: 350,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.whiteColor),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/images/rocket_name.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {

                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Falcon Heavy',
                        style: TextStyle(
                            fontWeight: FontWeightHelper.bold,
                            fontSize: 22,
                            color: AppColors.whiteColor),
                      ),
                      Text(
                        'The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeightHelper.light,
                            fontSize: 16,
                            color: AppColors.whiteColor),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
