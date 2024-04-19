import 'package:flutter/material.dart';
import 'custom_dragon_shadow.dart';

class FirstOnBoardingImage extends StatelessWidget {
  const FirstOnBoardingImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade800.withOpacity(0.4),
                blurRadius: 100,
                spreadRadius: 0,
                blurStyle: BlurStyle.outer,
                offset: const Offset(0, 180),
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              ClipRect(
                clipBehavior: Clip.antiAlias,
                child: Transform.scale(
                  scale: 0.9,
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.45,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.3),
              child: const CustomDragonShadow(dx: -10, dy: -200),
            ),
          ],
        ),
      ],
    );
  }
}
