import 'package:flutter/material.dart';
import 'package:team1_e1/core/shared_widgets/default_button.dart';
import 'package:team1_e1/core/shared_widgets/default_text_field.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/image_circle.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Edit Profile',style: TextStyles.poppins19MediumWhite,),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined,color: AppColors.whiteColor,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const ImageCircle(),
              const SizedBox(height: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email',style: TextStyles.poppins19MediumWhite,),
                  const SizedBox(height: 8,),
                  DefaultTextField(
                      readOnly: true,
                      fillColor: AppColors.lightGrey.withOpacity(.18),
                      filled: true,
                      radius: 20,
                      borderSide: BorderSide.none,
                      style: TextStyles.poppins17MediumWhite,
                      isPassword: false,
                  ),
                  const SizedBox(height: 15,),
                  Text('User Name',style: TextStyles.poppins19MediumWhite,),
                  const SizedBox(height: 8,),
                  DefaultTextField(
                    readOnly: false,
                    fillColor: AppColors.lightGrey.withOpacity(.18),
                    filled: true,
                    radius: 20,
                    borderSide: BorderSide.none,
                    style: TextStyles.poppins17MediumWhite,
                    isPassword: false,
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              DefaultButton(
                  radius: 20,
                  backgroundColor: AppColors.whiteColor,
                  text: 'Edit',
                  style: TextStyles.poppins21MediumBlack)
            ],
          ),
        ),
    );
  }
}
