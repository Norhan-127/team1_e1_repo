import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/features/crew/ui/widgets/crew_list.dart';
import '../../../../core/theming/styles.dart';

class CrewScreen extends StatelessWidget {
  const CrewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/4553888_19629 1.png"),
                fit: BoxFit.cover),
          ),
           child: Column(
             children: [
               AppBar(
                 backgroundColor: Colors.transparent,
                 title: Text('SpaceX Crew',style: TextStyles.poppins28White,),
               ),
               SizedBox(height: 20.h,),
               const CrewList()
             ],
           ),
        ),
      ),
    );
  }
}
