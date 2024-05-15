import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/crew_response.dart';
import 'crew_card.dart';

class CrewList extends StatelessWidget {
  final List<Crew> model;
  const CrewList({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: model.length,
        separatorBuilder: (context, index) => SizedBox(height: 15.h,),
        itemBuilder: (context, index) => CrewCard(model: model,index: index,),
      ),
    );
  }
}
