import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CapCon extends StatelessWidget {
  String? txt;
  int? index;
  CapCon({super.key,required this.txt,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.h),
      alignment: Alignment.center,
      width: 370.w,
      height: 80.h,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15)
      ),
      child: ListTile(
        title: Text('$txt',style: TextStyles.poppins22bold,),
        leading: Text('$index.' ,style: TextStyles.poppins22bold,),
        trailing: SvgPicture.asset('assets/images/rocket.svg',width: 80,height: 50,color: AppColors.whiteColor,),
      ),

    );

  }
}
