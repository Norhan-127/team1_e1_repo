import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CapsuleDetailsContainer extends StatelessWidget {
  String text;
  String body;
  String index;
  CapsuleDetailsContainer({super.key,required this.text,required this.body,required this.index});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 170.h,
        width: 170,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              left: 55.w,
              top: 0,
              child: CircleAvatar(
                radius: 22.r,
                backgroundColor: AppColors.whiteColor,
                child: Text(
                  index,
                  style: TextStyles.poppins28BoldWhite
                      .copyWith(color: Colors.black),
                ),
              ),
            ),
            Container(
              width: 155.w,
              height: 152.h,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(35)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                      child: Text(
                        text,
                        style: TextStyles.poppins28BoldWhite,
                      )),
                  Column(
                    children: [
                      const Divider(
                        thickness: 2,
                        color: AppColors.lightGrey,
                      ),
                      Text(
                        body,
                        style: TextStyles.poppins19MediumWhite,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}