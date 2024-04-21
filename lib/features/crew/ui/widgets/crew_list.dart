import 'package:flutter/material.dart';

import 'crew_card.dart';

class CrewList extends StatelessWidget {
  const CrewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => SizedBox(height: 15,),
        itemBuilder: (context, index) => CrewCard(),
      ),
    );
  }
}
