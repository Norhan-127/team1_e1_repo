import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/core/shared_widgets/default_button.dart';
import 'package:team1_e1/core/shared_widgets/default_text_field.dart';
import 'package:team1_e1/features/profile/logic/profile_cubit.dart';
import 'package:team1_e1/features/profile/logic/profile_state.dart';
import 'package:team1_e1/features/profile/ui/screens/profile_screen.dart';
import '../../../../core/shared_widgets/defult_app_bar.dart';
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
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
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
          ProfileCubit.get(context).userModel != null ?
          nameController.text = ProfileCubit.get(context).userModel!.name!:
          nameController.text = '';
          ProfileCubit.get(context).userModel != null ?
          emailController.text = ProfileCubit.get(context).userModel!.email!:
          emailController.text = '';;
          return Scaffold(
            appBar: DefaultAppBar(
              icon: Icons.arrow_back_ios_new_outlined,
              function: () => Navigator.pop(context),
              text: 'Edit Profile',
            ),
            body: ProfileCubit.get(context).userModel != null ?
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      if(state is UpdateUserDataLoading)
                        LinearProgressIndicator(),
                        SizedBox(height: 10,),
                      const ImageCircle(),
                      const SizedBox(height: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email', style: TextStyles.fontSpace18RegularWhite,),
                          const SizedBox(height: 8,),
                          DefaultTextField(
                            controller: emailController,
                            readOnly: true,
                            filled: true,
                            fillColor: Colors.transparent,
                            radius: 20,
                            style: TextStyles.fontSpace16RegularWhite,
                            isPassword: false,
                          ),
                          const SizedBox(height: 15,),
                          Text(
                            'User Name', style: TextStyles.fontSpace18RegularWhite,),
                          const SizedBox(height: 8,),
                          DefaultTextField(
                            validator: (val) {
                              if (val == '') {
                                return "name should not empty";
                              }
                              return null;
                            },
                            controller: nameController,
                            readOnly: false,
                            filled: true,
                            fillColor: Colors.transparent,
                            radius: 20,
                            borderSide: BorderSide.none,
                            style: TextStyles.fontSpace16RegularWhite,
                            isPassword: false,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30,),
                      DefaultButton(
                          function: (){
                            if (formKey.currentState!.validate()) {
                              ProfileCubit.get(context).updateUser(name: nameController.text);
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
                            }
                          },
                          radius: 20,
                          text: 'Edit',
                          style: TextStyles.fontSpace22RegularWhite,
                          gradient: RadialGradient(
                          center: Alignment.bottomRight,
                          radius: 4.4,
                          colors: [
                            AppColors.lightBlueColor,
                            AppColors.deepPurpleColor
                          ],
                        ),
                      )
                    ],
                  ),
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
