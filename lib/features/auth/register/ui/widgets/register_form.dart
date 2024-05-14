import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/routing/routes.dart';
import 'package:team1_e1/features/crew/ui/screen/crew_screen.dart';
import '../../../../../core/shared_widgets/default_button.dart';
import '../../../../../core/shared_widgets/default_text_field.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../logic/register_cubit.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if(state is RegisterError)
          {
            Fluttertoast.showToast(
                msg: 'Email is wrong or already exist',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }
          else if (state is RegisterSuccess){
            // Replace crewScreen to homeScreen
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CrewScreen(),));
          }
        },
        builder: (context, state) {
          return Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80.h,),
                Text(
                  'Let\'s Start !',
                  style: TextStyles.fontSpace36RegularWhite,
                ),
                Text(
                  'Create your account to continue exploring',
                  style: TextStyles.fontSpace18lightGrey,
                ),
                 SizedBox(
                  height: 70.h,
                ),
                DefaultTextField(
                  readOnly: false,
                  filled: true,
                  fillColor: Colors.transparent,
                  radius: 20,
                  controller: nameController,
                  validator: (val) {
                    if (val == '') {
                      return "Name should not empty";
                    }
                    return null;
                  },
                  isPassword: false,
                  style: TextStyles.fontSpace18lightGrey,
                  text: 'Your Name',
                  labelStyle: TextStyles.fontSpace18lightGrey,
                  suffixIcon: const Icon(
                    Icons.person,
                    color: AppColors.lightGrey,
                  ),
                ),
                 SizedBox(
                  height: 30.h,
                ),
                DefaultTextField(
                  readOnly: false,
                  filled: true,
                  fillColor: Colors.transparent,
                  radius: 20,
                  controller: emailController,
                  validator: (val) {
                    if (val == '') {
                      return "Email should not empty";
                    }
                    return null;
                  },
                  isPassword: false,
                  style: TextStyles.fontSpace18lightGrey,
                  text: 'Email Address',
                  labelStyle: TextStyles.fontSpace18lightGrey,
                  suffixIcon: const Icon(
                    Icons.email_outlined,
                    color: AppColors.lightGrey,
                  ),
                ),
                 SizedBox(
                  height: 30.h,
                ),
                DefaultTextField(
                  readOnly: false,
                  filled: true,
                  fillColor: Colors.transparent,
                  radius: 20,
                  controller: passwordController,
                  validator: (val) {
                    if (val == '') {
                      return "Password should not empty";
                    }
                    else if (val!.length < 6 ) {
                      return "Password should not less than 6";
                    }
                    return null;
                  },
                  isPassword: true,
                  style: TextStyles.fontSpace18lightGrey,
                  text: 'Password',
                  labelStyle: TextStyles.fontSpace18lightGrey,
                  suffixIcon: const Icon(
                    Icons.lock_outlined,
                    color: AppColors.lightGrey,
                  ),
                ),
                 SizedBox(
                  height: 45.h,
                ),
                state is! RegisterLoading ?
                DefaultButton(
                  function: () {
                    if (formKey.currentState!.validate()) {
                      RegisterCubit.get(context).userRegister(
                          name: nameController.text,
                          email: emailController.text,
                          password: passwordController.text);
                    }
                  },
                  radius: 20,
                  text: 'Sign Up',
                  icon: Icons.arrow_forward_ios,
                  style: TextStyles.fontSpace22RegularWhite,
                  IconColor: AppColors.whiteColor,
                  gradient: RadialGradient(
                    center: Alignment.bottomRight,
                    radius: 4.4,
                    colors: [
                      AppColors.lightBlueColor,
                      AppColors.deepPurpleColor
                    ],
                  ),
                ) :
                const Center(child: CircularProgressIndicator()),

                verticalSpacing(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyles.fontSpace18RegularWhite,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.loginScreen);
                      },
                      child:Text(
                        'Login',
                        style: TextStyles.fontSpace16RegularLightBlue,
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
