import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/colors.dart';

class DotsRow extends StatelessWidget {
  int pageIndex;
  DotsRow({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: pageIndex == 0
              ? BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.bottomRight,
                    radius: 4.4,
                    colors: [
                      AppColors.lightBlueColor,
                      AppColors.deepPurpleColor
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100))
              : BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(100)),
          width: pageIndex == 0 ? 60 : 18,
          height: 18,
        ),
        SizedBox(
          width: 30.w,
        ),
        Container(
          decoration: pageIndex == 1
              ? BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.bottomRight,
                    radius: 4.4,
                    colors: [
                      AppColors.lightBlueColor,
                      AppColors.deepPurpleColor
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100))
              : BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(100)),
          width: pageIndex == 1 ? 60 : 18,
          height: 18,
        ),
        SizedBox(
          width: 30.w,
        ),
        Container(
          decoration: pageIndex == 2
              ? BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.bottomRight,
                    radius: 4.4,
                    colors: [
                      AppColors.lightBlueColor,
                      AppColors.deepPurpleColor
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100))
              : BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(100)),
          width: pageIndex == 2 ? 60 : 18,
          height: 18,
        ),
      ],
    );
  }
}
