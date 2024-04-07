import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/capsules/data/models/capsule.dart';
import 'package:team1_e1/features/capsules/logic/capsule_cubit.dart';
import 'package:team1_e1/features/capsules/ui/widgets/cap_con.dart';

class CapsulesScreen extends StatefulWidget {
  const CapsulesScreen({super.key});

  @override
  State<CapsulesScreen> createState() => _CapsulesScreenState();
}

class _CapsulesScreenState extends State<CapsulesScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<CapsuleCubit>(context).GetAllCapsules();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/bk.png')
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              Text('Capsules',style: TextStyles.poppins30bold),
              SizedBox(height: 14.h,),
              Text('designed for transporting astronauts to and from the International Space Station. It is a significant advancement from the original Dragon spacecraft, featuring improvements in design, capabilities, and safety features.',style: TextStyles.poppins22regular,),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.56 ,
                child: BlocBuilder<CapsuleCubit, CapsuleState>(
                  builder: (context, state) {
                    if(state is GetCapsules){
                      return  ListView.builder(
                          itemCount: state.allCapsules.length,
                          itemBuilder: (context,i) {
                            return CapCon(txt: state.allCapsules[i].serial,index: i+1,);
                          }
                      );
                    }else{
                      return const Center(child: CircularProgressIndicator(color: Colors.white,strokeWidth: 10,));
                    }
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
