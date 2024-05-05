import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
                Text(
                  'Let\'s',
                  style: TextStyles.poppins40MediumWhite,
                ),
                Text(
                  'Start',
                  style: TextStyles.poppins63SemiBoldWhite,
                ),
                const SizedBox(
                  height: 150,
                ),
                DefaultTextField(
                  controller: nameController,
                  validator: (val) {
                    if (val == '') {
                      return "Name should not empty";
                    }
                    return null;
                  },
                  isPassword: false,
                  style: TextStyles.poppins17MediumWhite,
                  text: 'Your Name',
                  labelStyle: TextStyles.poppins17MediumWhite,
                  suffixIcon: const Icon(
                    Icons.person,
                    color: AppColors.whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
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
                    Icons.email_outlined,
                    color: AppColors.whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                DefaultTextField(
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
                  style: TextStyles.poppins17MediumWhite,
                  text: 'Password',
                  labelStyle: TextStyles.poppins17MediumWhite,
                  suffixIcon: const Icon(
                    Icons.lock_outlined,
                    color: AppColors.whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
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
                  backgroundColor: AppColors.whiteColor,
                  text: 'Sign Up',
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
