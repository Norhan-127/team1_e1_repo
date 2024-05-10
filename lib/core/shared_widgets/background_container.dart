import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  Widget child;
  BackgroundContainer({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         fit: BoxFit.cover,
      //         image: AssetImage('assets/images/app_background.png')
      //     )
      // ),
      child: child,
    );
  }
}