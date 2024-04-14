import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            Container(
              margin: EdgeInsets.only(left: 20.w),
              width: 84,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(0.3),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.whiteColor,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, Routes.capsuleScreen);
                },
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              'Serial $serial',
              style: TextStyles.poppins30WhiteBold,
            ),
          ],
        ),
        SizedBox(
          height: 6.h,
        ),
        const Divider(
          thickness: 1,
          color: AppColors.whiteColor,
        ),
      ],
    );
  }
}
