import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/shared_widgets/background_container.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';
import 'package:team1_e1/features/dragon/data/models/dragon_response.dart';
import 'package:team1_e1/features/dragon/ui/widgets/dragon_details.dart';
import '../../../../core/theming/styles.dart';

class DragonDetailsScreen extends StatelessWidget {
  Dragon dragon;
  DragonDetailsScreen({super.key, required this.dragon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        icon: Icons.arrow_back,
        function: () => Navigator.pop(context),
        text: '${dragon.name}',
      ),
      body: BackgroundContainer(
        child: ListView(
          children: [
            verticalSpacing(30),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: dragon.flickrImages!.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.white24),
                      child: FancyShimmerImage(imageUrl: i),
                    );
                  },
                );
              }).toList(),
            ),
            verticalSpacing(20),
            ListTile(
              title: Text(
                'Description',
                style: TextStyles.orbitron24BoldWhite,
              ),
              subtitle: Text(
                '${dragon.description}',
                style: TextStyles.exo14White,
              ),
            ),
            DragonDetails(
              text: 'Heat Shield',
              columnDetails: Column(
                children: [
                  Text(
                    'material: ${dragon.heatShield!.material}',
                    style: TextStyles.exo14White,
                  ),
                  Text(
                    'size in material: ${dragon.heatShield!.sizeMeters}',
                    style: TextStyles.exo14White,
                  ),
                  Text(
                    'dev partner: ${dragon.heatShield!.devPartner}',
                    style: TextStyles.exo14White,
                  ),

                ],
              ),
            ),
            DragonDetails(
              text: 'Height W Trunk',
              columnDetails: Column(
                children: [
                  Text(
                    'height trunk in feet: ${dragon.heightWTrunk!.feet}',
                    style: TextStyles.exo14White,
                  ),
                  Text(
                    'height trunk in meters: ${dragon.heightWTrunk!.meters}',
                    style: TextStyles.exo14White,
                  ),
                ],
              ),
            ),
            DragonDetails(
              text: 'Diameter',
              columnDetails: Column(
                children: [
                  Text(
                    'diameter in feet: ${dragon.diameter!.feet}',
                    style: TextStyles.exo14White,
                  ),
                  Text(
                    'diameter in meters: ${dragon.diameter!.meters}',
                    style: TextStyles.exo14White,
                  ),
                ],
              ),
            ),
            DragonDetails(
              text: 'thrusters',
              columnDetails: Column(
                children: [
                  Text(
                    'thrusters type: ${dragon.thrusters![0].type}',
                    style: TextStyles.exo14White,
                  ),
                  Text(
                    'thrusters amount: ${dragon.thrusters![0].amount}',
                    style: TextStyles.exo14White,
                  ),
                  Text(
                    'thrusters ISP: ${dragon.thrusters![0].isp}',
                    style: TextStyles.exo14White,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
