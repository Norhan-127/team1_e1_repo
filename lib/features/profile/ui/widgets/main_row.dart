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
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: AppColors.lightGrey.withOpacity(.4),width: 1)
          ),
          child: Icon(icon,color: AppColors.whiteColor,size: 18,),
        ),
        const SizedBox(width: 10,),
        Text(text,style: TextStyles.fontSpace18RegularWhite,),
        const Spacer(),
        IconButton(
          onPressed: function,
          icon: const Icon(Icons.arrow_forward_ios_outlined,size: 24,),
          color: AppColors.whiteColor,)
      ],
    );
  }
}
