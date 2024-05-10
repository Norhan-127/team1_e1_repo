import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/shared_widgets/background_container.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/capsules/logic/capsule_cubit.dart';
import 'package:team1_e1/features/capsules/ui/widgets/capsule_container_serial.dart';

import '../../../../core/networking/network_exceptions.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/capsule_state.dart';

class CapsulesScreen extends StatefulWidget {
  const CapsulesScreen({super.key});

  @override
  State<CapsulesScreen> createState() => _CapsulesScreenState();
}

class _CapsulesScreenState extends State<CapsulesScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CapsuleCubit>(context).getAllCapsules();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.w , vertical: 30.h),
          child: ListView(
            children: [
              SizedBox(
                height: 14.h,
              ),
              DefaultAppBar(
                icon: Icons.arrow_back,
                function: () => Navigator.pop(context),
                text: 'SpaceX Capsules',
              ),
              verticalSpacing(15),
              Divider(
                height: 0.5,
                color: AppColors.gray,
              ),
              verticalSpacing(15),
              Text(
                'designed for transporting astronauts to and from the International Space Station. It is a significant advancement from the original Dragon spacecraft, featuring improvements in design, capabilities, and safety features.',
                style: TextStyles.NormalWhite,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.63,
                child: BlocBuilder<CapsuleCubit, CapsuleState>(
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
                        success: (allCapsules) {
                          return ListView.builder(
                              itemCount: allCapsules.length,
                              itemBuilder: (context, i) => GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.capsuleDetailsScreen,
                                      arguments: allCapsules[i]);
                                },
                                child: CapsuleContainerSerial(
                                  txt: allCapsules[i].serial,
                                  index: i + 1,
                                ),
                              ));
                        },
                        error: (networkExceptions) => AlertDialog(
                          title: Text(
                            NetworkExceptions.getErrorMessage(
                                networkExceptions),
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                context
                                    .read<CapsuleCubit>()
                                    .getAllCapsules();
                              },
                              child: const Text('refresh'),
                            )
                          ],
                        ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}