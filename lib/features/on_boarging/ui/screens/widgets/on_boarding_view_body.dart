import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/features/on_boarging/ui/screens/widgets/custom_smooth_page_indicator.dart';
import '../../../../../core/theming/colors.dart';
import '../../../data/on_boarding_data.dart';
import '../../logic/on_boarding_cubit.dart';
import 'on_boarding_widgets.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody>
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
          itemCount: pages.length,
          onPageChanged: (c) {
            cubit.getCurrentPageViewIndex(c);
          },
          itemBuilder: (BuildContext context, int index) {
            return BlocBuilder<OnBoardingCurrentPageCubit,
                OnBoardingCurrentPageState>(
              builder: (context, state) {
                return OnBoardingWidget(
                  index: index,
                  skip: pages[index].skip,
                  onTab: () {
                    cubit.pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.fastEaseInToSlowEaseOut,
                    );
                  },
                );
              },
            );
          },
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.56,
          right: 0,
          left: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<OnBoardingCurrentPageCubit,
                  OnBoardingCurrentPageState>(
                builder: (context, state) {
                  return CustomSmoothIndicator(
                    color: cubit.currentPage == 2
                        ? AppColors.gold
                        : AppColors.redColor,
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
