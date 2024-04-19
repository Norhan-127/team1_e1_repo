import 'package:team1_e1/core/theming/text.dart';

class OnBoardingData {
  final String imagePath;
  final String title;
  final String description;
  final bool skip;

  OnBoardingData(this.imagePath, this.title, this.description, this.skip);
}

List<OnBoardingData> pages = [
  OnBoardingData("assets/images/onboarding_dragon.png", AppText.dragon,AppText.sendingHumansAndCargo,true),
  OnBoardingData("assets/images/onboarding_crew.jpg", AppText.humanSpaceLight,AppText.makingLife,true),
  OnBoardingData("assets/images/onboarding_rocket.png",AppText.ready, AppText.getReady,false),
];
