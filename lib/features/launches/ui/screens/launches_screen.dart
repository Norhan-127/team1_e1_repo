import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/shared_widgets/background_container.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/dragon/logic/dragon_cubit.dart';
import 'package:team1_e1/features/launches/logic/launches_cubit.dart';
import 'package:team1_e1/features/launches/logic/launches_state.dart';
import '../../../../core/networking/network_exceptions.dart';
import '../../../../core/routing/routes.dart';

class LaunchesScreen extends StatefulWidget {
  const LaunchesScreen({super.key});

  @override
  State<LaunchesScreen> createState() => _LaunchesScreenState();
}

class _LaunchesScreenState extends State<LaunchesScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<LaunchesCubit>(context).getAllLaunches();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h,),
              Text('Launches' ,style: TextStyles.orbitron24BoldWhite,),
              BlocBuilder<LaunchesCubit, LaunchesState>(
                  builder: (context, state) {
                return state.when(
                    initial: () {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 3,
                        ),
                      );
                    },
                    success: (allLaunches) {
                      return Expanded(
                        child: ListView.builder(
                            itemCount: allLaunches.length,
                            itemBuilder: (context, i) => GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.launchesDetailsScreen,
                                      arguments: allLaunches[i]);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 30.h),
                                  alignment: Alignment.center,
                                  width: 370.w,
                                  height: 80.h,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: ListTile(
                                    title: Text(
                                      '${allLaunches[i].name}',
                                      style: TextStyles.orbitron24BoldWhite,
                                    ),
                                  ),
                                ))),
                      );
                    },
                    error: (networkExceptions) => AlertDialog(
                          title: Text(
                            NetworkExceptions.getErrorMessage(
                                networkExceptions),
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                context.read<DragonCubit>().getAllDragons();
                              },
                              child: const Text('refresh'),
                            )
                          ],
                        ),
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 3,
                        ),
                      );
                    });
              }),
            ],
          ),
        ),
      ),
    );
  }
}
