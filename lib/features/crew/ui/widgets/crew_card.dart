import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/crew_response.dart';

class CrewCard extends StatelessWidget {
  final List<Crew> model;
  final int index;
  const CrewCard({super.key, required this.model, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1,color: AppColors.gray.withOpacity(.3))
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image(image: NetworkImage(model[index].image!,),width: 95.w,height: 90.h,fit: BoxFit.fill,)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model[index].name!,style: TextStyles.fontSpace16RegularWhite,),
              SizedBox(height: 3.h,),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_city,color: AppColors.gray,size: 16,),
                      SizedBox(width: 3.w,),
                      Text(model[index].agency!,style: TextStyles.fontSpace13RegularGrey,),
                    ],
                  ),
                  SizedBox(width: 30.w,),
                  Row(
                    children: [
                      model[index].status! == 'active'?
                      Icon(Icons.offline_pin,color: AppColors.lightGreenColor.withOpacity(.7),size: 16,)
                          :Icon(Icons.cancel,color: AppColors.lightRedColor.withOpacity(.7),size: 16,),
                      SizedBox(width: 3.w,),
                      Text(model[index].status!.toUpperCase(),style: TextStyles.fontSpace13RegularGrey,),
                    ],
                  )
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
