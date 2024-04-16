import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/theming/colors.dart';
import '../../logic/on_boarding_cubit.dart';

class CustomSmoothIndicator extends StatelessWidget {
  const CustomSmoothIndicator({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: BlocProvider.of<OnBoardingCurrentPageCubit>(context).pageController,
      count: 3,
      effect:  ExpandingDotsEffect(
        spacing: 8.0,
        dotWidth: 23.0,
        dotHeight: 7.0,
        dotColor: AppColors.darkBlueGrey,
        activeDotColor: color,
      ),
    );
  }
}