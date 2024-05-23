import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/theming/colors.dart';
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
      required this.image,
      required this.title ,
      required this.firstFlight});

 final List<String>? image;
 final String? description;
 final String? company;
 final String? type;
 final String? country;
 final int? stages;
 final int? boosters;
  final String? title;
  final String? firstFlight;



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1,color: AppColors.gray.withOpacity(.3)),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w , vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  image![0],
                  height: 138.h,
                  fit: BoxFit.cover,
                  width: double.infinity,

                ),
              ),
              verticalSpacing(20),
              Text(title! , style: TextStyles.fontSpace24RegularWhite,),
              verticalSpacing(10),
              Text(
                description!,
                style: TextStyles.fontSpace13RegularGrey,

              ),
              verticalSpacing(20),
              Row(
                children: [
                  Icon(Icons.location_on , color: AppColors.gray, size: 16,),
                  SizedBox(width: 5.w,),
                  Text(
                    '${country}',
                    style: TextStyles.fontSpace13RegularWhite,
                  ),

                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.location_city , color: AppColors.gray, size: 16,),
                  SizedBox(width: 5.w,),
                  Text(
                    '${company}',
                    style: TextStyles.fontSpace13RegularWhite,
                  ),
                  Spacer(),
                  Icon(Icons.rocket_launch , color: AppColors.gray,size: 16,),SizedBox(width: 5.w,),
                  Text(
                    '${type}',
                    style: TextStyles.fontSpace13RegularWhite,
                  ),

                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
