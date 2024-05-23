import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';

class ImageCircle extends StatelessWidget {
  const ImageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightGrey,
          ),
        ),
        ClipOval(
          child: Image.asset(
            'assets/images/avatar.png',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
