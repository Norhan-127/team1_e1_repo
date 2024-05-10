import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/features/home/widgets/home_data.dart';

class CategoryItem extends StatelessWidget {
  HomeModel data;
  final void Function()? ontap;
   CategoryItem({super.key , required this.data , this.ontap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            child: Image(
              image: AssetImage('${data.image}'
            ),),
          ),
          Positioned(
            top: 20,
            left: 30,
              child: Text(
            '${data.name}',
            style: TextStyle(color: AppColors.whiteColor, fontSize: 24),
          ),
          )
        ],
      ),
    );
  }
}
