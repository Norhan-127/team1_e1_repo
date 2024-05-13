import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/features/crew/logic/crew_cubit.dart';
import 'package:team1_e1/features/crew/logic/crew_state.dart';
import '../../../../core/networking/network_exceptions.dart';
import '../widgets/crew_list.dart';

class CrewScreen extends StatefulWidget {
  const CrewScreen({super.key});

  @override
  State<CrewScreen> createState() => _CrewScreenState();
}

class _CrewScreenState extends State<CrewScreen> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CrewCubit>(context).getAllCrew();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrewCubit, CrewState>(
        builder: (context, state) {
          return state.when(
              initial: (){
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                  ),
                );
              },
              success: (allCrew){
                return Scaffold(
                  backgroundColor: Colors.black,
                  body: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.w , vertical: 30.h),
                    child: SafeArea(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black,
                        child: Column(
                          children: [
                            DefaultAppBar(
                              icon: Icons.arrow_back,
                              function: () => Navigator.pop(context),
                              text: 'SpaceX Crew',
                            ),
                            verticalSpacing(15),
                            Divider(
                              height: 0.5,
                              color: AppColors.gray,
                            ),
                            verticalSpacing(15),
                            CrewList(model: allCrew,),
                          ],
                        ),
                      ),
                    ),
                  ),
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
                      context
                          .read<CrewCubit>()
                          .getAllCrew();
                    },
                    child: const Text('refresh'),
                  )
                ],
              ));
        }
    );
  }
}