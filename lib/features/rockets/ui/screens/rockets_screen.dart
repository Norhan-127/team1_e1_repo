import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/networking/network_exceptions.dart';
import 'package:team1_e1/core/routing/routes.dart';
import 'package:team1_e1/core/shared_widgets/background_container.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';
import 'package:team1_e1/features/rockets/logic/rocket_cubit.dart';
import 'package:team1_e1/features/rockets/logic/rocket_state.dart';
import 'package:team1_e1/features/rockets/ui/widgets/rocket_card.dart';

class RocketsScreen extends StatefulWidget {
  const RocketsScreen({super.key});

  @override
  State<RocketsScreen> createState() => _RocketsScreenState();
}

class _RocketsScreenState extends State<RocketsScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<RocketCubit>(context).getAllRockets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:DefaultAppBar(
        icon: Icons.arrow_back_ios,
        function: () => Navigator.pop(context),
        text: 'Rockets',
      ) ,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h , horizontal: 20.w),
        child: SafeArea(
          child: BackgroundContainer(
            child: Column(
              children: [
                BlocBuilder<RocketCubit, RocketState>(
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
                        load: () {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          );
                        },
                        success: (allRockets) {
                          return Expanded(
                            child: ListView.separated(
                              separatorBuilder:(context, index) => verticalSpacing(15.h),
                                itemCount: allRockets.length,
                                itemBuilder: (context, index) => GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.rocketDetailsScreen,
                                            arguments: allRockets[index]);
                                      },
                                      child: RocketCard(
                                        title: allRockets[index].name,
                                       company: allRockets[index].company,
                                       type:allRockets[index].type,
                                        image: allRockets[index].flickrImages,
                                      ),

                                    )),
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
                                    context.read<RocketCubit>().getAllRockets();
                                  },
                                  child: const Text('refresh'),
                                )
                              ],
                            ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
