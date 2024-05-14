import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/home/screens/profile_screen.dart';
import 'package:team1_e1/features/home/widgets/category_list.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w , vertical: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text(
                'Explore',
                style: TextStyles.fontSpace36RegularWhite,
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ));

                },
               icon: Icon(Icons.person_outline_outlined), color: Colors.white, iconSize: 40,)
            ],),

            SizedBox(
              height: 30.h,
            ),
            CategoryList(),
          ],
        ),
      ),
    );
  }
}
