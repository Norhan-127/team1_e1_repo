import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/shared_widgets/background_container.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';
import 'package:team1_e1/features/dragon/data/models/dragon_response.dart';
import 'package:team1_e1/features/dragon/ui/widgets/dragon_details.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class DragonDetailsScreen extends StatelessWidget {
  Dragon dragon;
  DragonDetailsScreen({super.key, required this.dragon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        icon: Icons.arrow_back_ios_new_outlined,
        function: () => Navigator.pop(context),
        text: '${dragon.name}',
      ),
      body: BackgroundContainer(
        child: ListView(
          children: [
            verticalSpacing(30),
            CarouselSlider(
              options: CarouselOptions(height: 270.0),
              items: dragon.flickrImages!.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal:10.0),
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
                style: TextStyles.fontSpace28lightWhite,
              ),
              subtitle: Text(
                '${dragon.description}',
                style: TextStyles.fontSpace13RegularGrey,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: DragonDetails(
                text: 'Heat Shield',
                columnDetails: Row(
                  children: [
                    Icon(Icons.wb_iridescent, color: AppColors.whiteColor),
                    horizontalSpacing(5),
                    Text(
                      '${dragon.heatShield!.material}',
                      style: TextStyles.fontSpace13RegularGrey,
                    ),
                    Spacer(),
                    Icon( Icons.height, color: AppColors.whiteColor),
                    horizontalSpacing(5),
                    Text(
                      '${dragon.heatShield!.sizeMeters}',
                      style: TextStyles.fontSpace13RegularGrey,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: DragonDetails(
                text: 'Height W Trunk',
                columnDetails: Row(
                  children: [
                    Icon(Icons.height, color: AppColors.whiteColor),
                    horizontalSpacing(5),
                    Text(
                      '${dragon.heightWTrunk!.feet}',
                      style: TextStyles.fontSpace13RegularGrey,
                    ),
                    Spacer(),
                    Icon( Icons.monitor_weight_outlined, color: AppColors.whiteColor),
                    horizontalSpacing(5),
                    Text(
                      '${dragon.heightWTrunk!.meters}',
                      style: TextStyles.fontSpace13RegularGrey,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: DragonDetails(
                text: 'Diameter',
                columnDetails: Row(
                  children: [
                    Icon(Icons.height, color: AppColors.whiteColor),
                    horizontalSpacing(5),
                    Text(
                      '${dragon.diameter!.feet}',
                      style: TextStyles.fontSpace13RegularGrey,
                    ),
                    Spacer(),
                    Icon( Icons.monitor_weight_outlined, color: AppColors.whiteColor),
                    horizontalSpacing(5),
                    Text(
                      '${dragon.diameter!.meters}',
                      style: TextStyles.fontSpace13RegularGrey,
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: DragonDetails(
                text: 'thrusters',
                columnDetails: Row(
                  children: [
                    Icon(Icons.wb_iridescent, color: AppColors.whiteColor),
                    horizontalSpacing(5),
                    Text(
                      '${dragon.thrusters![0].type}',
                      style: TextStyles.fontSpace13RegularGrey,
                    ),
                    Spacer(),
                    Icon( Icons.monitor_weight_outlined, color: AppColors.whiteColor),
                    horizontalSpacing(5),
                    Text(
                      '${dragon.thrusters![0].amount}',
                      style: TextStyles.fontSpace13RegularGrey,
                    ),
                    // Text(
                    //   'thrusters type: ${dragon.thrusters![0].type}',
                    //   style: TextStyles.fontSpace13RegularGrey,
                    // ),
                    // Text(
                    //   'thrusters amount: ${dragon.thrusters![0].amount}',
                    //   style: TextStyles.fontSpace13RegularGrey,
                    // ),
                    // Text(
                    //   'thrusters ISP: ${dragon.thrusters![0].isp}',
                    //   style: TextStyles.fontSpace13RegularGrey,
                    // ),
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
