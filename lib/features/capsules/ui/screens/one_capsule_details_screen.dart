import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/shared_widgets/background_container.dart';
import 'package:team1_e1/features/capsules/logic/capsule_cubit.dart';
import 'package:team1_e1/features/capsules/logic/capsule_state.dart';
import 'package:team1_e1/features/capsules/ui/widgets/appbar_capsule_details.dart';
import 'package:team1_e1/features/capsules/ui/widgets/capsule_details_container.dart';


class OneCapsuleDetailsScreen extends StatelessWidget {
  const OneCapsuleDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: BlocBuilder<CapsuleCubit, CapsuleState>(
          builder: (context, state) {
            return state.when(initial: () {
              return const CircularProgressIndicator(
                strokeWidth: 4,
                color: Colors.white,
              );
            }, getCapsules: (capsule) {
              return Column(
                children: [
                  AppBarCapsuleDetails(
                    serial:
                        '${capsule[context.read<CapsuleCubit>().index].serial}',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CapsuleDetailsContainer(
                            text: 'Type',
                            body:
                                '${capsule[context.read<CapsuleCubit>().index].type}',
                            index: '1',
                          ),
                          CapsuleDetailsContainer(
                            text: 'status',
                            body:
                                '${capsule[context.read<CapsuleCubit>().index].status}',
                            index: '2',
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CapsuleDetailsContainer(
                            text: 'reuse\ncount',
                            body: capsule[context.read<CapsuleCubit>().index]
                                .reuseCount
                                .toString(),
                            index: '3',
                          ),
                          CapsuleDetailsContainer(
                            text: 'land\nlandings',
                            body:
                                '${capsule[context.read<CapsuleCubit>().index].landLandings}',
                            index: '4',
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: CapsuleDetailsContainer(
                          text: 'water\nlandings',
                          body:
                              '${capsule[context.read<CapsuleCubit>().index].waterLandings}',
                          index: '5',
                        ),
                      ),
                    ],
                  )
                ],
              );
            });
          },
        ),
      ),
    );
  }
}
