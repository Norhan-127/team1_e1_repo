import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                image: AssetImage("assets/images/4553888_19629 1.png"),
                fit: BoxFit.cover),
          ),
           child: Column(
             children: [
               SizedBox(height: 20,),
               CrewList(),
             ],
           ),
        ),
      ),
    );
  }
}
