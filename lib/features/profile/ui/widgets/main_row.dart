import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/styles.dart';

import '../../../../core/theming/colors.dart';

class MainRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? function;
  const MainRow({super.key, required this.icon, required this.text, this.function});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(icon,color: Colors.black),
        ),
        const SizedBox(width: 10,),
        Text(text,style: TextStyles.poppins17MediumWhite,),
        const Spacer(),
        IconButton(
          onPressed: function,
          icon: const Icon(Icons.arrow_forward_ios_outlined),
          color: AppColors.whiteColor,)
      ],
    );
  }
}
