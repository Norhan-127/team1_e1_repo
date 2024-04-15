import 'package:team1_e1/core/theming/text.dart';

class OnBoardingData {
  final String imagePath;
  final String title;
  final String description;

  OnBoardingData(this.imagePath, this.title, this.description);
}

List<OnBoardingData> pages = [
  OnBoardingData("assets/images/dragon1onboarding x1.png", AppText.dragon,AppText.sendingHumansAndCargo),
  OnBoardingData("assets/images/human.png", AppText.humanSpaceLight,AppText.makingLife),
  OnBoardingData("assets/images/Launch Screen.png", AppText.getReady,''),
];
