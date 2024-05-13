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
        borderRadius: BorderRadius.circular(30),
        color: AppColors.gray.withOpacity(0.1),
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image(image: NetworkImage(model[index].image!,),width: 105.w,height: 105.h,fit: BoxFit.fill,)),
          const SizedBox(width: 9,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model[index].name!,style: TextStyles.poppins17MediumWhite, maxLines: 2,
                overflow: TextOverflow.ellipsis,),
              Text(model[index].agency!,style: TextStyles.poppins17LightWhite,maxLines: 2, overflow: TextOverflow.ellipsis,),
            ],
          )
        ],
      ),
    );
  }
}
