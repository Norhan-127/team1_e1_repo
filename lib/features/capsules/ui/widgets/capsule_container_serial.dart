import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/colors.dart';

import '../../../../core/theming/styles.dart';

class CapsuleContainerSerial extends StatelessWidget {
  String? txt;
  int? index;
  CapsuleContainerSerial({super.key,required this.txt,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: AppColors.gray.withOpacity(.3)),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding:  EdgeInsets.all(10.w.h),
        child: Row(
          children: [
            Text('$index .  ' ,style: TextStyles.fontSpace22BoldlightGray,),
           Text('$txt ',style: TextStyles.fontSpace22BoldlightGray,),
            Spacer(),
            Icon(Icons.arrow_forward_ios_outlined,color: AppColors.lightGrey,)
          ],
        ),
      ),
    );


  }
}