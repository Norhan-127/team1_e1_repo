import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared_widgets/background_container.dart';
import '../../data/models/capsules_response.dart';
import '../widgets/appbar_capsule_details.dart';
import '../widgets/capsule_details_container.dart';



class OneCapsuleDetailsScreen extends StatelessWidget {
  Capsule capsule;
  OneCapsuleDetailsScreen({super.key,required this.capsule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
          child: Column(
            children: [
              AppBarCapsuleDetails(
                serial:
                '${capsule.serial}',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CapsuleDetailsContainer(
                        text: 'Type',
                        body:
                        '${capsule.type}',
                        index: '1',
                      ),
                      CapsuleDetailsContainer(
                        text: 'status',
                        body:
                        '${capsule.status}',
                        index: '2',
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CapsuleDetailsContainer(
                        text: 'reuse\ncount',
                        body: capsule
                            .reuseCount
                            .toString(),
                        index: '3',
                      ),
                      CapsuleDetailsContainer(
                        text: 'land\nlandings',
                        body:
                        '${capsule.landLandings}',
                        index: '4',
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: CapsuleDetailsContainer(
                      text: 'water\nlandings',
                      body:
                      '${capsule.waterLandings}',
                      index: '5',
                    ),
                  ),
                ],
              )
            ],
          )

      ),
    );
  }
}