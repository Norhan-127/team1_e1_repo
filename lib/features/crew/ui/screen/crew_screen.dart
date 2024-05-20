import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/crew_list.dart';

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
                image: AssetImage("assets/images/app_background.png"),
                fit: BoxFit.cover),
          ),
           child: Column(
             children: [
               AppBar(
                 backgroundColor: Colors.transparent,
                 title: Text('SpaceX Crew',style: TextStyles.poppins28BoldWhite,),
               ),
               SizedBox(height: 20,),
               CrewList(),
             ],
           ),
        ),
      ),
    );
  }
}
