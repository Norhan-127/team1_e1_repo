import 'package:flutter/material.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/core/shared_widgets/default_button.dart';
import 'package:team1_e1/core/theming/colors.dart';
import 'package:team1_e1/core/theming/styles.dart';
import 'package:team1_e1/features/auth/login/ui/screens/login_screen.dart';
import 'package:team1_e1/features/auth/register/ui/screens/register_screen.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image(
        //   image: AssetImage('assets/images/login_image.png'),
        // ),
        verticalSpacing(30),
        Text(
          'Unlock a SpaceX of knowledge and adventure with your pass.',
          style: TextStyles.poppins19MediumWhite,
        ),
        verticalSpacing(60),
        DefaultButton(
          radius: 20,
          backgroundColor: AppColors.whiteColor,
          text: 'Log In',
          icon: Icons.arrow_forward,
          style: TextStyles.poppins21MediumBlack,
          IconColor: Colors.black,
          function: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
          },
        ),
        Center(
          child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ));
              },
              child: Text('Create new account',
                  style: TextStyles.poppins19MediumWhite)),
        )
      ],
    );
  }
}
