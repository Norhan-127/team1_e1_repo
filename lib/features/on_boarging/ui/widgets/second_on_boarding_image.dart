import 'package:flutter/material.dart';

class SecondOnBoardingImage extends StatelessWidget {
  const SecondOnBoardingImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.25,
      decoration: BoxDecoration(
        color: Colors.black,
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          )
      ),
    );
  }
}
