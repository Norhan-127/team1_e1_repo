import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/di/dependency_injection.dart';
import 'package:team1_e1/features/home/widgets/category_item.dart';
import 'package:team1_e1/features/home/widgets/home_data.dart';
import 'package:team1_e1/features/rockets/logic/rocket_cubit.dart';
import 'package:team1_e1/features/rockets/ui/screens/rockets_screen.dart';

import '../../../core/routing/routes.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return CategoryItem(
            data: items[index],
            ontap: () {
              if (index == 0) {
                Navigator.pushNamed(context,Routes.capsuleScreen);
              }
              if (index == 1) {
                Navigator.pushNamed(context,Routes.dragonScreen);
              }
              if (index == 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BlocProvider.value(
                            value: getIt<RocketCubit>(),
                            child: RocketsScreen(),
                          ),
                    ));
              }
              if (index == 3) {
                Navigator.pushNamed(context,Routes.crewScreen);
              }

            },
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 20.h,),
        itemCount: 4);


  }
}
