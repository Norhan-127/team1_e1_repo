import 'package:flutter/material.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';


class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.txt, required this.onTap});
  final String txt;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.09,
            vertical: MediaQuery.of(context).size.height * 0.01),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColors.redColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          txt,
          style: TextStyles.exo14Black,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}