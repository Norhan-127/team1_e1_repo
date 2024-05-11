import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/colors.dart';

import '../../../../core/theming/styles.dart';
import '../widgets/image_circle.dart';
import '../widgets/main_row.dart';
import 'edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Profile',style: TextStyles.poppins19MediumWhite,),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined,color: AppColors.whiteColor,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 20),
        child: Column(
          children: [
            Container(
              width: 300.w,
              height: 260.h,
              decoration: BoxDecoration(
                  color: AppColors.lightGrey.withOpacity(.18),
                borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ImageCircle(),
                  const SizedBox(height: 15,),
                  Text('Bryan Wolf',style: TextStyles.poppins19MediumWhite,),
                  const SizedBox(height: 7,),
                  Text('bryanwolf@gmail.com',style: TextStyles.poppins16WhiteFontWeight300,),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: 300.w,
              height: 60.h,
              decoration: BoxDecoration(
                  color: AppColors.lightGrey.withOpacity(.18),
                  borderRadius: const BorderRadius.all(Radius.circular(15))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: MainRow(text: 'Edit Profile',icon: Icons.person_pin_circle_outlined,
                  function: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfile(),)),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
                width: 300.w,
                height: 60.h,
                decoration: BoxDecoration(
                    color: AppColors.lightGrey.withOpacity(.18),
                    borderRadius: const BorderRadius.all(Radius.circular(15))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: MainRow(
                    text: 'Logout',icon: Icons.logout,
                    function: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfile(),),)
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}


