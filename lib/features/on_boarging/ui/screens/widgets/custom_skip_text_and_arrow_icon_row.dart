import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/theming/text.dart';

class CustomSkipTextAndArrowIcon extends StatelessWidget {
  const CustomSkipTextAndArrowIcon({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            AppText.skip,
            style: TextStyles.exo14LightBlack,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.silver,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(Icons.arrow_circle_right,
                color: Colors.white, size: 42),
          ),
        ),
      ],
    );
  }
}
