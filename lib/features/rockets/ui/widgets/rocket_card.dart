import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';


class RocketCard extends StatelessWidget {
  List<String>? image;
  String? title;
  String? company;
  String? type;


  RocketCard(
      {super.key,
      required this.image,
      required this.title,
        required this.company,
        required this.type
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155.h,
      decoration: BoxDecoration(
          border: Border.all(width: 1,color: AppColors.gray.withOpacity(.3)),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(12.0) , topLeft: Radius.circular(12.0)),
            child: Image.network(
                          image![0],
                          height: 100.h,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
          ),
          Padding(
            padding:  EdgeInsets.all(8.h),
            child: InkWell(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: TextStyles.fontSpace16RegularWhite,
                  ),
                  Row(
                    children: [
                    Icon(Icons.location_city , color: AppColors.gray, size: 16,),
                    SizedBox(width: 5,),
                    Text(company!, style: TextStyles.fontSpace13RegularGrey,),
                    Spacer(),
                    Icon(Icons.rocket_launch , color: AppColors.gray,size: 16,),
                    SizedBox(width: 5,),
                    Text(type! , style: TextStyles.fontSpace13RegularGrey,)
                  ],),
                  
                ],

              ),
            ),

          ),
        ],
      ),
    );
  }
}
