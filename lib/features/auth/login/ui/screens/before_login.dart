import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/default_button.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../register/ui/screens/register_screen.dart';
import 'login_screen.dart';


class BeforeLoginScreen extends StatelessWidget {
  const BeforeLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/auth_background.png"),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 40.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Let’s float in',style: TextStyles.poppins40MediumWhite,),
                  Text('SpaceX',style: TextStyles.poppins63SemiBoldWhite,),
                  const SizedBox(height: 240,),
                  Text('Welcome',style: TextStyles.poppins40MediumWhite,),
                  Text('Unlock a SpaceX of knowledge and adventure with your pass.',style: TextStyles.poppins19MediumWhite,),
                  SizedBox(height: 20,),
                  DefaultButton(
                      radius: 20,
                      backgroundColor: AppColors.whiteColor,
                      text: 'Log In',
                      icon: Icons.arrow_forward,
                    style: TextStyles.poppins21MediumBlack,
                    IconColor: Colors.black,
                    function: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                    },
                  ),
                  Center(
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                        },
                        child: Text('Create new account',style: TextStyles.poppins19MediumWhite)
                    ),
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
