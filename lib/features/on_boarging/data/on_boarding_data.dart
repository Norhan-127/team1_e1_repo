import 'package:team1_e1/core/theming/text.dart';

class OnBoardingData {
  final String imagePath;
  final String title;
  final String description;
  final bool skip;

  OnBoardingData(this.imagePath, this.title, this.description, this.skip);
}

List<OnBoardingData> pages = [
  OnBoardingData("assets/images/dragon1onboarding x1.png", AppText.dragon,AppText.sendingHumansAndCargo,true),
  OnBoardingData("assets/images/human.png", AppText.humanSpaceLight,AppText.makingLife,true),
  OnBoardingData("assets/images/Launch Screen.png", AppText.getReady,'',false),
];
