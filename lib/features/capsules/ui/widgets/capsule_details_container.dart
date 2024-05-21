import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CapsuleDetailsContainer extends StatelessWidget {
  String text;
  String body;
  String index;
  IconData icon;
  CapsuleDetailsContainer({super.key,required this.text,required this.body,required this.index , required this.icon});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 150.h,
        width: 170,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: 155.w,
              height: 152.h,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: AppColors.gray.withOpacity(.3)),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(icon,color: AppColors.lightGrey,),
                  Center(
                      child: Text(
                        text,
                        style: TextStyles.fontSpace22RegularWhite,
                      )),
                  Column(
                    children: [
                      const Divider(
                        thickness: 2,
                        color: AppColors.gray,
                      ),
                      Text(
                        body,
                        style: TextStyles.fontSpace22RegularWhite,
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