import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/home/widgets/category_list.dart';
import 'package:team1_e1/features/profile/ui/screens/profile_screen.dart';

import '../../../core/shared_widgets/defult_app_bar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        text: 'Explore',
        action: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ));

              },
              icon: Icon(Icons.person_outline_outlined), color: Colors.white, iconSize: 25,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w ,vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryList(),
            ],
          ),
        ),
      ),
    );
  }
}
