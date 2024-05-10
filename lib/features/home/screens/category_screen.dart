import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/home/widgets/category_list.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text(
              'Explore',
              style: TextStyles.roboto36WhiteFontWeight700,
            ),
            Spacer(),
            Icon(Icons.account_circle_outlined, color: Colors.white, size: 35,)
          ],),
         
          SizedBox(
            height: 30.h,
          ),
          CategoryList(),
        ],
      ),
    );
  }
}
