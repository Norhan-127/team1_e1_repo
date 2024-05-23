import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/shared_widgets/defult_app_bar.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/dragon/logic/dragon_cubit.dart';
import 'package:team1_e1/features/dragon/logic/dragon_state.dart';
import '../../../../core/networking/network_exceptions.dart';
import '../../../../core/routing/routes.dart';

class DragonScreen extends StatefulWidget {
  const DragonScreen({super.key});

  @override
  State<DragonScreen> createState() => _DragonScreenState();
}

class _DragonScreenState extends State<DragonScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DragonCubit>(context).getAllDragons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(
          icon: Icons.arrow_back_ios_new_outlined,
          function: () => Navigator.pop(context),
          text: 'Dragons',
        ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            verticalSpacing(15),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(image: AssetImage('assets/images/dragon_image.jpg',)
                  ),),
            BlocBuilder<DragonCubit, DragonState>(builder: (context, state) {
              return state.when(
                  initial: () {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3,
                      ),
                    );
                  },
                  success: (allDragons) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: allDragons.length,
                          itemBuilder: (context, i) => GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.dragonDetailsScreen,
                                    arguments: allDragons[i]);
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 30.h),
                                alignment: Alignment.center,
                                width: 370.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1,color: AppColors.gray.withOpacity(.3)),
                                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                                ),
                                child: ListTile(
                                  title: Text(
                                    '${allDragons[i].name}',
                                    style: TextStyles.fontSpace22RegularWhite,
                                  ),
                                  trailing: Text(
                                    '${allDragons[i].firstFlight}',
                                    style: TextStyles.fontSpace18RegularWhite,
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
                  ));
            }),

                        success: (allDragons){
                          return Expanded(
                            child: ListView.builder(
                                itemCount: allDragons.length,
                                itemBuilder: (context, i) => GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Routes.dragonDetailsScreen,
                                          arguments: allDragons[i]);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 30.h),
                                      alignment: Alignment.center,
                                      width: 370.w,
                                      height: 80.h,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.3),
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: ListTile(
                                        title: Text('${allDragons[i].name}', style: TextStyles.poppins28BoldWhite,),
                                        trailing: Text('${allDragons[i].firstFlight}' , style: TextStyles.poppins17LightWhite,),
                                      ),



          ],
        ),
      ));


  }
}



