import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/core/shared_widgets/default_button.dart';
import 'package:team1_e1/core/shared_widgets/default_text_field.dart';
import 'package:team1_e1/features/profile/logic/profile_cubit.dart';
import 'package:team1_e1/features/profile/logic/profile_state.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/image_circle.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  late TextEditingController nameController;
  late TextEditingController emailController;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit()..getUserData(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          nameController.text = ProfileCubit.get(context).userModel!.name!;
          emailController.text = ProfileCubit.get(context).userModel!.email!;
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                'Edit Profile', style: TextStyles.poppins19MediumWhite,),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: AppColors.whiteColor,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: ProfileCubit.get(context).userModel != null ?
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ImageCircle(),
                    const SizedBox(height: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email', style: TextStyles.poppins19MediumWhite,),
                        const SizedBox(height: 8,),
                        DefaultTextField(
                          controller: emailController,
                          readOnly: true,
                          fillColor: AppColors.lightGrey.withOpacity(.18),
                          filled: true,
                          radius: 20,
                          borderSide: BorderSide.none,
                          style: TextStyles.poppins17MediumWhite,
                          isPassword: false,
                        ),
                        const SizedBox(height: 15,),
                        Text(
                          'User Name', style: TextStyles.poppins19MediumWhite,),
                        const SizedBox(height: 8,),
                        DefaultTextField(
                          controller: nameController,
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
                        function: (){
                          ProfileCubit.get(context).updateUser(name: nameController.text);
                        },
                        radius: 20,
                        backgroundColor: AppColors.whiteColor,
                        text: 'Edit',
                        style: TextStyles.poppins21MediumBlack)
                  ],
                ),
              ),
            ) :
            const Center(
              child: CircularProgressIndicator(
                color: AppColors.whiteColor,
              ),
            ),
          );
        },
      ),
    );
  }
}
