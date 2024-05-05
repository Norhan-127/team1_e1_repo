import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team1_e1/core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/crew_list.dart';

class CrewScreen extends StatelessWidget {
  const CrewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Scaffold(
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
                   leading: IconButton(
                     onPressed: (){
                       Navigator.pop(context);
                     },
                     icon: Icon(Icons.arrow_back,color: AppColors.whiteColor,size: 25,),
                   ),
                   backgroundColor: Colors.transparent,
                   title: Text('SpaceX Crew',style: TextStyles.poppins28BoldWhite,),
                 ),
                 SizedBox(height: 20,),
                 CrewList(),
               ],
             ),
          ),
        ),
      ),
    );
  }
}
