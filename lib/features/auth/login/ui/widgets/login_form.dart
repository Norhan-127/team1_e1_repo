import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          if(state is LoginError)
          {
            Fluttertoast.showToast(
                msg: 'Email or Password is wrong',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }
          else if (state is LoginSuccess){
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
                Text('Welcome', style: TextStyles.poppins40MediumWhite,),
                Text('Back', style: TextStyles.poppins63SemiBoldWhite,),
                const SizedBox(height: 150,),
                DefaultTextField(
                  controller: emailController,
                  validator: (val) {
                    if (val == '') {
                      return "Email should not empty";
                    }
                    return null;
                  },
                  isPassword: false,
                  style: TextStyles.poppins17MediumWhite,
                  text: 'Email Address',
                  labelStyle: TextStyles.poppins17MediumWhite,
                  suffixIcon: const Icon(
                    Icons.email_outlined, color: AppColors.whiteColor,),
                ),
                const SizedBox(height: 10,),
                DefaultTextField(
                  controller: passwordController,
                  validator: (val) {
                    if (val == '') {
                      return "Password should not empty";
                    }
                    return null;
                  },
                  isPassword: true,
                  style: TextStyles.poppins17MediumWhite,
                  text: 'Password',
                  labelStyle: TextStyles.poppins17MediumWhite,
                  suffixIcon: const Icon(
                    Icons.lock_outlined, color: AppColors.whiteColor,),
                ),
                const SizedBox(height: 40,),
                state is! LoginLoading ?
                DefaultButton(
                  function: () {

                    if (formKey.currentState!.validate()) {
                      LoginCubit.get(context).userLogin(
                          email: emailController.text,
                          password: passwordController.text
                      );
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutScreen(),));
                  },
                  radius: 20,
                  backgroundColor: AppColors.whiteColor,
                  text: 'Log In',
                  icon: Icons.arrow_forward,
                  style: TextStyles.poppins21MediumBlack,
                  IconColor: Colors.black,
                ) :
                const Center(child: CircularProgressIndicator())
              ],
            ),
          );
        },
      ),
    );
  }
}
