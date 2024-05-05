import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/features/crew/logic/crew_cubit.dart';
import 'package:team1_e1/features/crew/logic/crew_state.dart';
import '../../../../core/networking/network_exceptions.dart';
import '../../../../core/theming/styles.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/app_background.png"),
                  fit: BoxFit.cover),
            ),
             child: Column(
               children: [
                 AppBar(
                   leading: IconButton(
                     onPressed: (){
                       Navigator.pop(context);
                     },
                     icon: Icon(Icons.arrow_back,color: AppColors.whiteColor,size: 25,),
                   ),
                   backgroundColor: Colors.transparent,
                   title: Text('SpaceX Crew',style: TextStyles.poppins28BoldWhite,),
                 ),
                 SizedBox(height: 20,),
                 CrewList(),
               ],
             ),
          ),
        ),
      ),

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
                body: SafeArea(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/app_background.png"),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        AppBar(
                          backgroundColor: Colors.transparent,
                          title: Text(
                            'SpaceX Crew', style: TextStyles.poppins28BoldWhite,),
                        ),
                        const SizedBox(height: 20,),
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
