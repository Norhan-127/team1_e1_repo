import 'package:flutter/material.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/shared_widgets/default_button.dart';
import '../../../../../core/shared_widgets/default_text_field.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/space-galaxy-background-generative-ai 1.png"),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 40.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome',style: TextStyles.poppins40MediumWhite,),
                  Text('Back',style: TextStyles.poppins63SemiBoldWhite,),
                  const SizedBox(height: 150,),
                  DefaultTextField(
                    isPassword: false,
                    style: TextStyles.poppins17MediumWhite,
                    text: 'Email Address',
                    labelStyle: TextStyles.poppins17MediumWhite,
                    suffixIcon: const Icon(Icons.email_outlined,color: AppColors.whiteColor,),
                  ),
                  const SizedBox(height: 10,),
                  DefaultTextField(
                    isPassword: true,
                    style: TextStyles.poppins17MediumWhite,
                    text: 'Password',
                    labelStyle: TextStyles.poppins17MediumWhite,
                    suffixIcon: const Icon(Icons.lock_outlined,color: AppColors.whiteColor,),
                  ),
                  const SizedBox(height: 40,),
                  DefaultButton(
                      radius: 20,
                      backgroundColor: AppColors.whiteColor,
                      text: 'Log In',
                      icon: Icons.arrow_forward,
                    style: TextStyles.poppins21MediumBlack,
                    IconColor: Colors.black,
                    function: (){
                        Navigator.pushReplacementNamed(context, Routes.navBarScreen);
                    },
                  ),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, Routes.signUpScreen);
                  }, child: Text('Register -> ' , style: TextStyles.exo14White,))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
