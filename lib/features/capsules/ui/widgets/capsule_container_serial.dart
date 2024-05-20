import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class CapsuleContainerSerial extends StatelessWidget {
  String? txt;
  int? index;
  CapsuleContainerSerial({super.key,required this.txt,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.h),
      alignment: Alignment.center,
      width: 270.w,
      height: 80.h,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15)
      ),
      child: ListTile(
        title: Text('$txt',style: TextStyles.poppins28BoldWhite,),
        leading: Text('$index.' ,style: TextStyles.poppins28BoldWhite,),
      ),

    );

  }
}