import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'crew_card.dart';

class CrewList extends StatelessWidget {
  const CrewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => SizedBox(height: 15.h,),
        itemBuilder: (context, index) => const CrewCard(),
      ),
    );
  }
}
