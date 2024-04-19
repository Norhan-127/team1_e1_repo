import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/features/on_boarging/ui/widgets/second_on_boarding_image.dart';
import 'package:team1_e1/features/on_boarging/ui/widgets/third_on_boarding_image.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/images.dart';
import '../../../../../core/theming/text.dart';
import '../../data/on_boarding_data.dart';
import 'custom_button.dart';
import 'custom_skip_text_and_arrow_icon_row.dart';
import 'first_on_boarding_img.dart';
import 'on_boarding_two_text_widgets.dart';

class OnBoardingWidget extends StatelessWidget {
  OnBoardingWidget({
    super.key,
    required this.index,
    required this.onTab,
  });

  final int index;
  final VoidCallback onTab;

  final List<OnBoardingData> _pages = [
    OnBoardingData(
      AppImages.onBoardingDragonImage,
      AppText.dragon,
      AppText.sendingHumansAndCargo,
      true,
    ),
    OnBoardingData(
      AppImages.onBoardingCrewImage,
      AppText.humanSpaceLight,
      AppText.makingLife,
      true,
    ),
    OnBoardingData(
      AppImages.onBoardingRocketImage,
      AppText.ready,
      AppText.getReady,
      false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        index == 0
            ? FirstOnBoardingImage(
                image: _pages[index].imagePath,
              )
            : index == 1
                ? SecondOnBoardingImage(
                    image: _pages[index].imagePath,
                  )
                : ThirdOnBoardingImage(
                    image: _pages[index].imagePath,
                  ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: index == 0
                    ? const Radius.circular(100)
                    : const Radius.circular(0),
                topRight: index == 2
                    ? const Radius.circular(100)
                    : const Radius.circular(0),
              ),
            ),
            child: OnBoardingTwoTexts(
              title: _pages[index].title,
              description: _pages[index].description,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: _pages[index].skip
                ? CustomSkipTextAndArrowIcon(onTap: onTab,)
                : SizedBox(
                    height: 46.h,
                    child: CustomButton(
                      txt: AppText.getStarted,
                      onTap: () {},
                    ),
                  ),
          ),
        )
      ],
    );
  }
}
//Text(AppText.getStarted,
