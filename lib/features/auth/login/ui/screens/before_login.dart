import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team1_e1/core/helpers/spacing.dart';
import 'package:team1_e1/features/auth/login/ui/widgets/image_and_text.dart';
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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              children: [
                Text(
                  'SpaceX',
                  style: TextStyles.orbitron40BoldWhite,
                ),
                // Image(image: AssetImage('assets/images/space_icon.png',),width: 100.w, height: 100.h,),
                verticalSpacing(20),
                ImageAndText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// return Scaffold(
//   backgroundColor: Colors.black,
//   body: SafeArea(
//     child: SingleChildScrollView(
//       child: Padding(
//         padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
//         child: Column(
//           children: [
//             Text('SpaceX',style: TextStyles.orbitron40BoldWhite,),
//             // Image(image: AssetImage('assets/images/space_icon.png',),width: 100.w, height: 100.h,),
//             verticalSpacing(20),
//             ImageAndText(),
//
//           ],
//         ),
//       ),
//     ),
//   ),
// );

//return Scaffold(
//   body: SafeArea(
//     child: Container(
//       width: double.infinity,
//       height: double.infinity,
//       color: Colors.black,
//       child: Padding(
//         padding:
//             const EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Let’s float in',
//                 style: TextStyles.poppins40MediumWhite,
//               ),
//               Text(
//                 'SpaceX',
//                 style: TextStyles.poppins63SemiBoldWhite,
//               ),
//               const SizedBox(
//                 height: 240,
//               ),
//               Text(
//                 'Welcome',
//                 style: TextStyles.poppins40MediumWhite,
//               ),
//               Text(
//                 'Unlock a SpaceX of knowledge and adventure with your pass.',
//                 style: TextStyles.poppins19MediumWhite,
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               DefaultButton(
//                 radius: 20,
//                 backgroundColor: AppColors.whiteColor,
//                 text: 'Log In',
//                 icon: Icons.arrow_forward,
//                 style: TextStyles.poppins21MediumBlack,
//                 IconColor: Colors.black,
//                 function: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => LoginScreen(),
//                       ));
//                 },
//               ),
//               Center(
//                 child: TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => RegisterScreen(),
//                           ));
//                     },
//                     child: Text('Create new account',
//                         style: TextStyles.poppins19MediumWhite)),
//               )
//             ],
//           ),
//         ),
//       ),
//     ),
//   ),
// );
