import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team1_e1/core/theming/colors.dart';

import '../routing/routes.dart';
import '../theming/styles.dart';


class DefaultBottomNavigationBar extends StatelessWidget {
  const DefaultBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(top: 10.h),
        height: MediaQuery.of(context).size.height * 0.15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeButtons(img: 'assets/images/rocket.svg', txt: 'Capsule',onTap: (){
              Navigator.pushReplacementNamed(context, Routes.capsuleScreen);
            },),
            HomeButtons(img: 'assets/images/rocket.svg', txt: 'Rockets',onTap: (){
              Navigator.pushReplacementNamed(context, Routes.rocketScreen);
            },),
            HomeButtons(img: 'assets/images/rocket.svg', txt: 'Crew' , onTap: (){
              Navigator.pushReplacementNamed(context, Routes.crewScreen);
            },),
            HomeButtons(img: 'assets/images/rocket.svg', txt: 'Dragons',onTap: (){
              Navigator.pushReplacementNamed(context, Routes.dragonScreen);
            }),
            HomeButtons(img: 'assets/images/rocket.svg', txt: 'Launches',onTap: (){
              Navigator.pushReplacementNamed(context, Routes.launchesScreen);
            },),

          ],
        ),
      ),
    );
  }
}


class HomeButtons extends StatelessWidget {
  String img;
  String txt;
  void Function()? onTap;

  HomeButtons({super.key,required this.img,required this.txt,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(txt,style: TextStyles.exo14White),
        SizedBox(height: 10.h,),
        GestureDetector(
          onTap: onTap,
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(20),
            color: AppColors.whiteColor,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.w , vertical: 13.h),
              child: SvgPicture.asset(img , width: 25.w, height: 25.h,),
            ),
          ),
        ),
      ],
    );
  }
}
