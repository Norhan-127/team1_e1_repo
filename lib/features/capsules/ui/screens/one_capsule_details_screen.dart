import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';
import 'package:team1_e1/features/capsules/ui/widgets/capsule_details_container.dart';
import '../../data/models/capsules_response.dart';


class OneCapsuleDetailsScreen extends StatelessWidget {
  Capsule capsule;
  OneCapsuleDetailsScreen({super.key,required this.capsule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        icon: Icons.arrow_back_ios_new_outlined,
        function: () => Navigator.pop(context),
        text: 'Capsule  ${capsule.serial}',
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            verticalSpacing(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CapsuleDetailsContainer(
                      icon: Icons.type_specimen_outlined,
                      text: 'Type',
                      body:
                      '${capsule.type}',
                      index: '1',
                    ),
                    CapsuleDetailsContainer(
                      icon: Icons.verified_outlined,
                      text: 'status',
                      body:
                      '${capsule.status}',
                      index: '2',
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CapsuleDetailsContainer(
                      icon: Icons.replay_outlined,
                      text: 'reuse\ncount',
                      body: capsule
                          .reuseCount
                          .toString(),
                      index: '3',
                    ),
                    CapsuleDetailsContainer(
                      icon: Icons.flight_land_outlined,
                      text: 'land\nlandings',
                      body:
                      '${capsule.landLandings}',
                      index: '4',
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CapsuleDetailsContainer(
                      icon: Icons.flight_takeoff_outlined,
                      text: 'water\nlandings',
                      body:
                      '${capsule.waterLandings}',
                      index: '5',
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}