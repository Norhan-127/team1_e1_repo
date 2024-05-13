import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class AppBarCapsuleDetails extends StatelessWidget {
  String serial;
  AppBarCapsuleDetails({super.key,required this.serial});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.whiteColor,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, Routes.capsuleScreen);
              },
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              'Serial $serial',
              style: TextStyles.exo24White,
            ),
          ],
        ),
      verticalSpacing(15),
        const Divider(
          height: 0.5,
          color: AppColors.gray,
        ),
        verticalSpacing(15),
      ],
    );
  }
}