import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.txt, required this.onTap});

  final String txt;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 12.h),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColors.redColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          txt,
          style: TextStyles.exo18LightBlack,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
