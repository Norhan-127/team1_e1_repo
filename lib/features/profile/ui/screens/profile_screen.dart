import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/features/auth/login/ui/screens/login_screen.dart';
import 'package:team1_e1/features/profile/logic/profile_cubit.dart';
import 'package:team1_e1/features/profile/logic/profile_state.dart';
import '../../../../core/shared_widgets/defult_app_bar.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/image_circle.dart';
import '../widgets/main_row.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit()..getUserData(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return Scaffold(
            appBar: DefaultAppBar(
              icon: Icons.arrow_back_ios_new_outlined,
              function: () => Navigator.pop(context),
              text: 'Profile',
            ),
            body: ProfileCubit.get(context).userModel != null ?
            Padding(
              padding:
              EdgeInsets.symmetric(vertical: 25.0.h, horizontal: 20.w),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 260.h,
                    decoration: BoxDecoration(
                        color: AppColors.lightGrey.withOpacity(.18),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ImageCircle(),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          ProfileCubit.get(context).userModel!.name!,
                          style: TextStyles.fontSpace22RegularWhite,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          ProfileCubit.get(context).userModel!.email!,
                          style: TextStyles.fontSpace18RegularWhite,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60.h,
                    decoration: BoxDecoration(
                        color: AppColors.lightGrey.withOpacity(.18),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: MainRow(
                        text: 'Edit Profile',
                        icon: Icons.person_pin_circle_outlined,
                        function: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditProfileScreen(),
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: AppColors.lightGrey.withOpacity(.18),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: MainRow(
                          text: 'Logout',
                          icon: Icons.logout,
                          function: () async {
                            await FirebaseAuth.instance.signOut();
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const LoginScreen(),
                                ),
                                (route) => false);
                          },
                        ),
                      )),
                ],
              ),
            ) :
            const Center(
              child: CircularProgressIndicator(
                color: AppColors.whiteColor,
              ),
            ),
          );
        },
      ),
    );
  }
}
