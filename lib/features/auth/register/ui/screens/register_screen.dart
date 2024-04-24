import 'package:flutter/material.dart';
import 'package:team1_e1/features/auth/register/ui/widgets/register_form.dart';

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
          child: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 40.0),
              child: RegisterForm(),
            ),
          ),
        ),
      ),
    );
  }
}
