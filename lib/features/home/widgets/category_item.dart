import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/home/widgets/home_data.dart';

class CategoryItem extends StatelessWidget {
  HomeModel data;
  final void Function()? ontap;
  CategoryItem({super.key, required this.data, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            child: Image(
              image: AssetImage('${data.image}'),
              height: 110.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            left: 30,
            child: Text(
              '${data.name}',
              style: TextStyles.fontSpace18RegularWhite,
            ),
          )
        ],
      ),
    );
  }
}


