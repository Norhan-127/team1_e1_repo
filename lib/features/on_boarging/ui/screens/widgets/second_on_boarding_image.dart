import 'package:flutter/material.dart';
import 'package:team1_e1/features/on_boarging/data/on_boarding_data.dart';

class SecondOnBoardingImage extends StatelessWidget {
  const SecondOnBoardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.25,
      decoration: BoxDecoration(
        color: Colors.black,
          image: DecorationImage(
              image: AssetImage(pages[1].imagePath),
              fit: BoxFit.cover
          )
      ),
    );
  }
}
