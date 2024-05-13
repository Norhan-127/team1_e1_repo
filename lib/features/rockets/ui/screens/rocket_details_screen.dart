import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/features/rockets/data/models/rockets_response.dart';
import 'package:team1_e1/features/rockets/ui/widgets/rocket_informations.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';


class RocketDetailsScreen extends StatelessWidget {
  Rocket rocket;
   RocketDetailsScreen({super.key , required this.rocket });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black,

              child: SingleChildScrollView(
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
      ),
    );
  }
}
