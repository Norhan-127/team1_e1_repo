import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CrewCard extends StatelessWidget {
  const CrewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: double.infinity,
        height: 132,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.lightGrey.withOpacity(0.1),
        ),
        child: Row(
          children: [
            const ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),
                child: Image(image: AssetImage('assets/images/crew.png',),width: 185,height: 185,)),
            const SizedBox(width: 2,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Robert Behnken',style: TextStyles.poppins17MediumWhite,),
                Text('NASA',style: TextStyles.poppins17LightWhite,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
