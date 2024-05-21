import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  backgroundColor: AppColors.backgroundColor,
                  appBar: DefaultAppBar(
                    icon: Icons.arrow_back_ios_new_outlined,
                    function: () => Navigator.pop(context),
                    text: 'Crew',
                  ),
                  body: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w ,vertical: 10.h),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        children: [
                          CrewList(model: allCrew,),
                        ],
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