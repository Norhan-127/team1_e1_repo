import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/home/widgets/category_list.dart';
import 'package:team1_e1/features/profile/ui/screens/profile_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w ,vertical: 20.h),
          child: Column(
            children: [
              Row(
               children: [
                 Text('Explore',style:TextStyles.fontSpace22RegularWhite),
                 Spacer(),
                 IconButton(
                   onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => ProfileScreen(),
                         ));
                   },
                   icon: Icon(Icons.account_circle_outlined), color: Colors.white, iconSize: 30,),
               ],
              ),
              verticalSpacing(15),
              CategoryList(),
            ],
          ),
        ),
      ),
    );
  }
}
