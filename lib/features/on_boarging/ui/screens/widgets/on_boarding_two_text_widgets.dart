import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/styles.dart';

class OnBoardingTwoTexts extends StatelessWidget {
  const OnBoardingTwoTexts({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 30.h),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyles.audioWideRegularBlack,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            description,
            style: TextStyles.roboto20MediumBlack,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
