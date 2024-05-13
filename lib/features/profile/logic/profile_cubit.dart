import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team1_e1/features/profile/logic/profile_state.dart';
import '../../auth/register/data/user_model.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  static ProfileCubit get(context) => BlocProvider.of(context);


  UserModel ? userModel;
  void getUserData(){
    emit(GetUserDataLoading());
    FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).get()
        .then((value) {
      userModel=UserModel.fromJson(value.data()!);
      emit(GetUserDataSuccess());
    })
        .catchError((error){
      emit(GetUserDataError());
    });
  }

  void updateUser({
    required String name,
  }){
    UserModel model = UserModel(
      name: name,
      email: userModel!.email,
      uId: userModel!.uId,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid).update(model.toMap())
        .then((value) {
      getUserData();
    })
        .catchError((error){
      emit(UpdateUserDataError());
    });
  }
}
