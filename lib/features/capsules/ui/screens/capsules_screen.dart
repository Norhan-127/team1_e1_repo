import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/shared_widgets/background_container.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/capsules/logic/capsule_cubit.dart';
import 'package:team1_e1/features/capsules/ui/widgets/capsule_container_serial.dart';

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
    BlocProvider.of<CapsuleCubit>(context).GetAllCapsules();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              Text('Capsules',style: TextStyles.poppins30WhiteBold),
              SizedBox(height: 14.h,),
              Text('designed for transporting astronauts to and from the International Space Station. It is a significant advancement from the original Dragon spacecraft, featuring improvements in design, capabilities, and safety features.',style: TextStyles.poppins22WhiteRegular,),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.56 ,
                child: BlocBuilder<CapsuleCubit, CapsuleState>(
                  builder: (context, state) {
                    return state.when(
                        initial: (){
                        return const Center(child: CircularProgressIndicator(color: Colors.white,strokeWidth: 10,));
                        },
                        getCapsules: (allCapsules){
                          return  ListView.builder(
                                    itemCount: allCapsules.length,
                                    itemBuilder: (context,i) {
                                      return GestureDetector(
                                        onTap: (){
                                          context.read<CapsuleCubit>().index = i;
                                          Navigator.pushNamed(context, Routes.capsuleDetailsScreen);},
                                          child: CapsuleContainerSerial(txt: allCapsules[i].serial,index: i+1,));
                                    });
                        });
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
