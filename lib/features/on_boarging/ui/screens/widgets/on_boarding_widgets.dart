import 'package:flutter/material.dart';
import 'package:team1_e1/features/on_boarging/ui/screens/widgets/custom_button.dart';
import 'package:team1_e1/features/on_boarging/ui/screens/widgets/first_on_boarding_img.dart';
import 'package:team1_e1/features/on_boarging/ui/screens/widgets/second_on_boarding_image.dart';
import 'package:team1_e1/features/on_boarging/ui/screens/widgets/third_on_boarding_image.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/theming/text.dart';
import '../../../data/on_boarding_data.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget(
      {super.key,
      required this.index,
      required this.skip,
      required this.onTab});

  final int index;
  final bool skip;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        index == 0
            ? const FirstOnBoardingImage()
            : index == 1
                ? const SecondOnBoardingImage()
                : const ThirdOnBoardingImage(),
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
                ),),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.14,
                  vertical: MediaQuery.of(context).size.height * 0.03),
              child: Column(
                children: [
                  Text(
                    pages[index].title,
                    style: TextStyles.orbitron24BoldBlack,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    pages[index].description,
                    style: TextStyles.exo14Black,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: skip
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          AppText.skip,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      GestureDetector(
                        onTap: onTab,
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
                  )
                : SizedBox(
                    height: 46,
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
