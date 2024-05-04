import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/styles.dart';

class RocketInformation extends StatelessWidget {
  const RocketInformation(
      {super.key,
      required this.description,
      required this.stages,
      required this.country,
      required this.boosters,
      required this.type,
      required this.company,
      required this.image});

 final List<String>? image;
 final String? description;
 final String? company;
 final String? type;
 final String? country;
 final int? stages;
 final int? boosters;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(
            image![0],
            height: 138.h,
            fit: BoxFit.cover,
            width: 300.w,
          
          ),
        ),
        const SizedBox(height: 30),
        Text(
          description!,
          style: TextStyles.NormalWhite,
        ),
        const SizedBox(
          height: 40,
        ),
        const Divider(
          height: 0.5,
          color: Colors.white24,
        ),
        const SizedBox(height: 40),
        Text(
          'company: ${company}',
          style: TextStyles.font22RegularWhite,
        ),
        const SizedBox(height: 30),
        Text(
          'Type: ${type}',
          style: TextStyles.font22RegularWhite,
        ),
        const SizedBox(height: 30),
        Text(
          'country: ${country}',
          style: TextStyles.font22RegularWhite,
        ),
        const SizedBox(height: 30),
        Text(
          'boosters: ${boosters}',
          style: TextStyles.font22RegularWhite,
        ),
        const SizedBox(height: 30),
        Text(
          'stages: ${stages}',
          style: TextStyles.font22RegularWhite,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
