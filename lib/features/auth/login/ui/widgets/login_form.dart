import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/routing/routes.dart';
import 'package:team1_e1/features/home/screens/layout_screen.dart';
import '../../../../../core/shared_widgets/default_button.dart';
import '../../../../../core/shared_widgets/default_text_field.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../crew/ui/screen/crew_screen.dart';
import '../../logic/login_cubit.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginError) {
            Fluttertoast.showToast(
                msg: 'Email or Password is wrong',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          } else if (state is LoginSuccess) {
            // Replace crewScreen to homeScreen
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const CrewScreen(),
                ));
          }
        },
        builder: (context, state) {
          return Form(
              key: formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80.h,
                    ),
                    Text(
                      'Welcome Back !',
                      style: TextStyles.fontSpace36RegularWhite,
                    ),
                    Text(
                      'get back in to continue exploring ',
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
                    state is! LoginLoading
                        ? DefaultButton(
                            function: () {
                              if (formKey.currentState!.validate()) {
                                LoginCubit.get(context).userLogin(
                                    email: emailController.text,
                                    password: passwordController.text);
                              }
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LayoutScreen(),
                                  ));
                            },
                            radius: 20,
                            backgroundColor: AppColors.lightGrey,
                            text: 'Log In',
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
                          )
                        : const Center(child: CircularProgressIndicator()),
                    verticalSpacing(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyles.fontSpace18RegularWhite,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.signUpScreen);
                          },
                          child:Text(
                            'Sign Up',
                            style: TextStyles.fontSpace16RegularLightBlue,
                          ),
                        )
                      ],
                    ),
                  ]));
        },
      ),
    );
  }
}
