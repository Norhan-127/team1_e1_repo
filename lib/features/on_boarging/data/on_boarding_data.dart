import 'package:team1_e1/core/theming/images.dart';
import 'package:team1_e1/core/theming/text.dart';

class OnBoardingData {
  final String imagePath;
  final String title;
  final String description;
  final bool skip;

  OnBoardingData(this.imagePath, this.title, this.description, this.skip);
}

List<OnBoardingData> pages = [
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
