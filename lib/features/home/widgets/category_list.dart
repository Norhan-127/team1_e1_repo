import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/core/di/dependency_injection.dart';
import 'package:team1_e1/features/about_company/ui/screens/about_company_screen.dart';
import 'package:team1_e1/features/capsules/logic/capsule_cubit.dart';
import 'package:team1_e1/features/capsules/ui/screens/capsules_screen.dart';
import 'package:team1_e1/features/crew/ui/screen/crew_screen.dart';
import 'package:team1_e1/features/dragon/logic/dragon_cubit.dart';
import 'package:team1_e1/features/dragon/ui/screens/dragon_screen.dart';
import 'package:team1_e1/features/home/widgets/category_item.dart';
import 'package:team1_e1/features/home/widgets/home_data.dart';
import 'package:team1_e1/features/launches/ui/screens/launches_screen.dart';
import 'package:team1_e1/features/rockets/logic/rocket_cubit.dart';
import 'package:team1_e1/features/rockets/ui/screens/rockets_screen.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9 / 0.8,
        ),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (ctx, index) {
          return CategoryItem(
            data: items[index],
            ontap: () {
              if (index == 0) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BlocProvider.value(
                            value: getIt<CapsuleCubit>(),
                            child: CapsulesScreen(),
                          ),
                    ));
              }
              if (index == 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BlocProvider.value(
                            value: getIt<DragonCubit>(),
                            child: DragonScreen(),
                          ),
                    ));
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CrewScreen(),
                    ));
              }
              if (index == 4) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LaunchesScreen(),
                    ));
              }
              if (index == 5) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CompanyScreen(),
                    ));
              }
            },
          );
        });
  }
}
