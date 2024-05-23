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
      appBar: DefaultAppBar(
        icon: Icons.arrow_back_ios,
        function: () => Navigator.pop(context),
        text: 'Rockets',
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 RocketInformation(
                   title: rocket.name,
                   description: rocket.description,
                   image: rocket.flickrImages,
                   type: rocket.type,
                   boosters: rocket.boosters,
                   company: rocket.company,
                   country: rocket.country,
                   stages: rocket.stages,
                   firstFlight: rocket.firstFlight,
                 )
              ]
            ),
          ),
        ),
      ),
    );
  }
}
