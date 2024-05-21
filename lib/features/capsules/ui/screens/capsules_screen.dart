import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/capsules/logic/capsule_cubit.dart';
import 'package:team1_e1/features/capsules/ui/widgets/capsule_container_serial.dart';
import '../../../../core/networking/network_exceptions.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/capsule_state.dart';
import 'package:team1_e1/core/theming/colors.dart';

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
      appBar: DefaultAppBar(
        icon: Icons.arrow_back_ios_new_outlined,
        function: () => Navigator.pop(context),
        text: 'Capsules',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage(
                  'assets/images/spacexCapsules.jpg',
                ),
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
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
                        return ListView.separated(
                            separatorBuilder: (context, index) =>verticalSpacing(20),
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
                                  context.read<CapsuleCubit>().getAllCapsules();
                                },
                                child: const Text('refresh'),
                              )
                            ],
                          ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
