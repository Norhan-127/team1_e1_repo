import 'package:flutter/material.dart';

class CustomDragonShadow extends StatelessWidget {
  const CustomDragonShadow({super.key, required this.dx, required this.dy});
  final double dx;
  final double dy;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(900),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            blurStyle: BlurStyle.inner,
            color: Colors.black.withOpacity(0.8),
            spreadRadius: 6,
            offset: Offset(dx, dy),
          ),
        ],
      ),
    );
  }
}
