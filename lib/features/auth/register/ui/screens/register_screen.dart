import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/default_button.dart';
import '../../../../../core/shared_widgets/default_text_field.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                  Text('Let\'s',style: TextStyles.poppins40White,),
                  Text('Start',style: TextStyles.poppins63White,),
                  SizedBox(height: 150.h,),
                  DefaultTextField(
                    style: TextStyles.poppins17White,
                    text: 'Your Name',
                    labelStyle: TextStyles.poppins17White,
                    suffixIcon: const Icon(Icons.person,color: AppColors.whiteColor,),
                  ),
                  SizedBox(height: 10.h,),
                  DefaultTextField(
                    style: TextStyles.poppins17White,
                    text: 'Email Address',
                    labelStyle: TextStyles.poppins17White,
                    suffixIcon: const Icon(Icons.email_outlined,color: AppColors.whiteColor,),
                  ),
                  SizedBox(height: 10.h,),
                  DefaultTextField(
                    style: TextStyles.poppins17White,
                    text: 'Password',
                    labelStyle: TextStyles.poppins17White,
                    suffixIcon: const Icon(Icons.lock_outlined,color: AppColors.whiteColor,),
                  ),
                  SizedBox(height: 40.h,),
                  DefaultButton(
                      radius: 20,
                      backgroundColor: AppColors.whiteColor,
                      text: 'Sign Up',
                      icon: Icons.arrow_forward,
                    style: TextStyles.poppins21Black,
                    IconColor: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
