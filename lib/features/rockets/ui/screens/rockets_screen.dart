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
      backgroundColor: Colors.black,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 30.h , horizontal: 30.w),
        child: SafeArea(
          child: BackgroundContainer(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                DefaultAppBar(
                  icon: Icons.arrow_back,
                  function: () => Navigator.pop(context),
                  text: 'SpaceX Rockets',
                ),
                verticalSpacing(15),
                const Divider(
                  height: 0.5,
                  color: Colors.white24,
                ),
                verticalSpacing(30),
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
                              separatorBuilder:(context, index) => verticalSpacing(15),
                                itemCount: allRockets.length,
                                itemBuilder: (context, index) => GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.rocketDetailsScreen,
                                            arguments: allRockets[index]);
                                      },
                                      child: RocketCard(
                                        title: allRockets[index].name,
                                        description:
                                            allRockets[index].description,
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
