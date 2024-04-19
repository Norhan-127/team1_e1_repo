import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/on_boarding_cubit.dart';
import 'custom_smooth_page_indicator.dart';
import 'on_boarding_widgets.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    BlocProvider.of<OnBoardingCurrentPageCubit>(context)
        .pageController
        .dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<OnBoardingCurrentPageCubit>(context);
    return Stack(
      children: [
        PageView.builder(
          controller: cubit.pageController,
          itemCount: 3,
          onPageChanged: (c) {
            cubit.getCurrentPageScreenIndex(c);
          },
          itemBuilder: (BuildContext context, int index) {
            return OnBoardingWidget(
              index: index,
              onTab: () {
                cubit.pageController.nextPage(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.fastEaseInToSlowEaseOut,
                );
              },
            );
          },
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.467,
          right: 0,
          left: 0,
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSmoothIndicator()
            ],
          ),
        )
      ],
    );
  }
}
