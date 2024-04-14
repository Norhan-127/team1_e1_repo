import 'package:flutter/cupertino.dart';

class BackgroundContainer extends StatelessWidget {
  Widget child;
  BackgroundContainer({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/bk.png')
          )
      ),
      child: child,
    );
  }
}
